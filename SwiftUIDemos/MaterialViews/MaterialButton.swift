import SwiftUI
import MaterialComponents.MaterialButtons

struct MaterialButton: UIViewRepresentable {
  var title: String
  var action: () -> ()

  init(_ title: String, _ action: @escaping () -> ()) {
    self.title = title
    self.action = action
  }

  class Coordinator: NSObject {
    var buttonView: MaterialButton

    init(_ buttonView: MaterialButton) {
      self.buttonView = buttonView
    }

    @objc func buttonTapped() {
      self.buttonView.action()
    }
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIView(context: Context) -> MDCButton {
    let button = MDCButton()
    button.setTitle(title, for: .normal)
    button.addTarget(context.coordinator,
                     action: #selector(Coordinator.buttonTapped),
                     for: .touchUpInside)
    return button
  }

  func updateUIView(_ uiView: MDCButton, context: Context) {
  }
}

struct MaterialButton_Previews: PreviewProvider {
  static var previews: some View {
    MaterialButton("hello") {
      print("asdflkjasdlkfjdsa")
    }
  }
}
