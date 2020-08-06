import SwiftUI

struct MaterialSliderDemoView: View {
  @State private var mdcSliderCelsius: CGFloat = 0
  @State private var uiSliderCelsius: Double = 0

  var body: some View {
    VStack {

      Spacer()

      Text("\(mdcSliderCelsius) Celsius is \(mdcSliderCelsius * 9 / 5 + 32) Fahrenheit")
      MaterialSlider(value: $mdcSliderCelsius)

      Text("\(uiSliderCelsius) Celsius is \(uiSliderCelsius * 9 / 5 + 32) Fahrenheit")
      Slider(value: $uiSliderCelsius, in: -100...100, step: 0.1)
    }
    .navigationBarTitle("Comparison of SwiftUI's Slider and Material's MDCSlider")
  }
}

struct MaterialSliderDemoView_Previews: PreviewProvider {
  static var previews: some View {
    MaterialSliderDemoView()
  }
}
