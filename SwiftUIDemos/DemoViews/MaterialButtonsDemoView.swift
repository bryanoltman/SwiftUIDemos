//
//  MaterialButtonsDemoview.swift
//  SwiftUIDemos
//
//  Created by Bryan Oltman on 8/6/20.
//  Copyright © 2020 Bryan Oltman. All rights reserved.
//

import SwiftUI

struct MaterialButtonsDemoView: View {
    var body: some View {
      VStack {
        Button("SwiftUI Button") {
          print("Hi!")
        }
        
        MaterialButton("MDC Button") {
          print("Hi!")
        }
      }
    .navigationBarTitle("Comparison of SwiftUI's Button and Material's MDCButton")
    }
}

struct MaterialButtonsDemoView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialButtonsDemoView()
    }
}
