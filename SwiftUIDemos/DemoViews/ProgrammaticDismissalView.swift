import SwiftUI

struct ProgrammaticDismissalView: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    NavigationView {
      Button("Tap to dismiss") {
        self.presentationMode.wrappedValue.dismiss()
      }
      .navigationBarTitle("Programmatic Dismissal")
    }
  }
}

struct ProgrammaticDismissalView_Previews: PreviewProvider {
  static var previews: some View {
    ProgrammaticDismissalView()
  }
}
