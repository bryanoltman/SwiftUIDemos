import SwiftUI

struct SheetNavigationView: View {
  @Binding var showSheetView: Bool

  var body: some View {
    NavigationView {
      NavigationLink(destination: FirstPushedView(showSheetView: $showSheetView)) {
        Text("Push next view")
      }
    }
  }
}

struct FirstPushedView: View {
  @Binding var showSheetView: Bool

  var body: some View {
    NavigationLink(destination: LastPushedView(showSheetView: $showSheetView)) {
      Text("Push another view")
    }
  }
}

struct LastPushedView: View {
  @Binding var showSheetView: Bool

  var body: some View {
    Button("Dismiss flow") {
      self.showSheetView.toggle()
    }
  }
}

//struct SheetNavigationView_Previews: PreviewProvider {
//  static var previews: some View {
//    SheetNavigationView()
//  }
//}
