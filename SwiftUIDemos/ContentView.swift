import SwiftUI

struct ContentView: View {
  @State var showingProgrammaticDismissalViewDemo = false
  @State var showingSheetNavigationViewDemo = false

  var body: some View {
    NavigationView {
      List {
        Button("Modal Dismissal") {
          self.showingProgrammaticDismissalViewDemo.toggle()
        }
        .sheet(isPresented: $showingProgrammaticDismissalViewDemo) {
          ProgrammaticDismissalView()
        }

        Button("Navigation in Modal") {
          self.showingSheetNavigationViewDemo.toggle()
        }
        .sheet(isPresented: $showingSheetNavigationViewDemo) {
          SheetNavigationView(showSheetView: self.$showingSheetNavigationViewDemo)
        }

        NavigationLink(destination: TextColorAnimationDemoView()) {
          Text("Text Color Animation Demo")
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
