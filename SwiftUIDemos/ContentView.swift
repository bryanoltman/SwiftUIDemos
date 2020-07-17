import SwiftUI

struct ContentView: View {
  @State var showingDetail = false

  var body: some View {
    NavigationView {
      List {
        Button("Modal Dismissal") {
          self.showingDetail.toggle()
        }
        .sheet(isPresented: $showingDetail) {
          ProgrammaticDismissalView()
        }

      }
      .navigationBarTitle("Demos")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
