import SwiftUI

struct ContentView: View {
  @State var showingProgrammaticDismissalViewDemo = false
  @State var showingSheetNavigationViewDemo = false

  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Animation")) {
          NavigationLink(destination: TextColorAnimationDemoView()) {
            Text("Text Color Animation Demo")
          }
        }

        Section(header: Text("Navigation")) {
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
        }

        Section(header: Text("View Styling")) {
          NavigationLink(destination: ButtonStylingDemoView()) {
            Text("Button styling")
          }
        }

        Section(header: Text("UIViewRepresentable")) {
          NavigationLink(destination: MaterialButtonsDemoView()) {
            Text("Material Buttons")
          }

          NavigationLink(destination: MaterialSliderDemoView()) {
            Text("Material Sliders")
          }
        }

        Section(header: Text("The SwiftUI Lab")) {
          NavigationLink(destination: LetterSizeAnimationDemoView()) {
            Text("Letter size animation")
          }

          NavigationLink(destination: FlowerAnimationDemoView()) {
            Text("Flower animation")
          }

          NavigationLink(destination: SkewAnimationDemoView()) {
            Text("Skew animation")
          }
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
