import SwiftUI

struct ButtonStylingDemoView: View {
  private let primaryColor = Color(hex: "3700B3")
  private let onPrimaryColor = Color(hex: "FFFFFF")

  @State var containedButtonShowsLeadingIcon = false

  var body: some View {
    VStack {
      Button( action: {
        print("tapped the contained button!")
      }) {
        Text("Add to cart")
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
      }
      .foregroundColor(onPrimaryColor)
      .background(primaryColor)
      .frame(minWidth: 64)
    }
  }
}

struct ButtonStylingDemoView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonStylingDemoView()
  }
}
