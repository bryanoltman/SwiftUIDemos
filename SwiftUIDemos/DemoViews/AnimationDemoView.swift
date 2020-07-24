//
//  AnimationDemoView.swift
//  SwiftUIDemos
//
//  Created by Bryan Oltman on 7/23/20.
//  Copyright © 2020 Bryan Oltman. All rights reserved.
//

import SwiftUI

struct TextColorAnimationDemoView: View {
  @State var isBlue = false

  var body: some View {
    VStack {
      Text("Animating Text")
        // foregroundColor cannot be animated.
        // Instead, we can animate the colorMultiply property.
        // The following will animate this Text element's text Black <=> Blue
        // as a linear animation over 4 seconds.
        .foregroundColor(.white)
        .colorMultiply(isBlue ? .blue : .black)
      Button("Animate", action: {
        withAnimation(.linear(duration: 4)) {
          isBlue.toggle()
        }
      })
    }
  }
}

struct AnimationDemoView_Previews: PreviewProvider {
  static var previews: some View {
    TextColorAnimationDemoView()
  }
}
