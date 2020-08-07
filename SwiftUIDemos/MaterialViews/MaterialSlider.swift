import SwiftUI
import MaterialComponents.MaterialSlider

struct MaterialSlider: UIViewRepresentable {
  @Binding var value : CGFloat

  class Coordinator: NSObject {
    var sliderView: MaterialSlider

    init(_ sliderView: MaterialSlider) {
      self.sliderView = sliderView
    }

    @objc func valueChanged(_ slider: MDCSlider) {
      sliderView.value = CGFloat(slider.value)
    }
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIView(context: Context) -> MDCSlider {
    let slider = MDCSlider(frame: .zero)
    slider.minimumValue = 0.00
    slider.maximumValue = 100.00

    slider.addTarget(
      context.coordinator,
      action: #selector(Coordinator.valueChanged(_:)),
      for: .valueChanged
    )

    return slider
  }

  func updateUIView(_ uiView: MDCSlider, context: Context) {
    uiView.setContentHuggingPriority(.defaultHigh, for: .vertical)
  }
}


struct MaterialSlider_Previews: PreviewProvider {
  @State static var value: CGFloat = 1.0

  static var previews: some View {
    VStack {
      Text("Slider value is \(value)")
      MaterialSlider(value: $value)
    }
  }
}
