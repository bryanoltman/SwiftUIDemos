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
  @State var color = Color.black

  var body: some View {
    VStack {
      Text("""
Animating foregroundColor is not as straightforward as it could be in SwiftUI.
Instead of manipulating foregroundColor, we have to use .colorMultiply to animate the foregroundColor property.

TODO: Are there other properties that have this limitation? What are they?

1) Button (unsurprising, since Button is basically interactive Text)
""")
        // foregroundColor cannot be animated on Text elements.
        // Instead, we can animate the colorMultiply property.
        // The following will animate this Text element's text Black <=> Blue
        // as a linear animation over 4 seconds.
        .foregroundColor(.white)
        .colorMultiply(color)

      Spacer().frame(width: 0, height: 40)

      Button("Animate", action: {
        withAnimation(.linear(duration: 2)) {
          self.isBlue.toggle()
          if self.isBlue {
            self.color = .black
          } else {
            self.color = .blue
          }
        }
      })

      Spacer().frame(width: 0, height: 40)

      Text("foregroundColor can be animated on other views though…? :thinkingface:")

      Rectangle()
        .frame(width: 100, height: 100)
        // foregroundColor can be animated on other views though…? :thinkingface:
        .foregroundColor(isBlue ? .blue : .black)
        // .foregroundColor(color) // also works here

      Button("I'm a Button") { print("yay! you pressed me!") }
        // foregroundColor cannot be animated on Button elements either.
        // This value doesn't animate, even when `color` is changed as part
        // of an animation.
        .foregroundColor(color)
    }
    .padding()
  }
}

struct AnimationDemoView_Previews: PreviewProvider {
  static var previews: some View {
    TextColorAnimationDemoView()
  }
}
