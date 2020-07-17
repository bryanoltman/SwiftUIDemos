//
//  ProgrammaticDismissalView.swift
//  SwiftUIDemos
//
//  Created by Bryan Oltman on 7/16/20.
//  Copyright © 2020 Bryan Oltman. All rights reserved.
//

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
