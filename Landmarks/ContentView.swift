//
//  ContentView.swift
//  Landmarks
//
//  Created by Brian Foster on 8/15/20.
//  Copyright © 2020 Brian Foster. All rights reserved.
//

import SwiftUI

// You can combine and embed multiple views in stacks,
// which group views together horizontally, vertically, or back-to-front.

// the Asset Catalog is in the sidebar as "Assets.xcassets".

struct ContentView: View {
    var body: some View {
        // BF - stack these modifiers vertically
        // Cmd-click the 'Text' here or in the preview to Inspect
        // a VerticalStack allows you to put more than one View on the screen.
        VStack() {
            MapView()
                .edgesIgnoringSafeArea(.top)        // lets the map go over the menu bar!
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {       // aligns all views to leading edge.
                Text("Turtle Rock")             // Title text
                    .font(.title)
                    .fontWeight(.heavy)
                // HorizontalStack loads multiple views horizontally.
                HStack {
                    Text("Joshua Tree National Park")   // Park
                        .font(.subheadline)
                    Spacer()                    // a spacer uses all available space.
                    Text("California")          // State
                }
            }
            .padding()
            
            Spacer()    // pushes everything to the top of the page.
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
