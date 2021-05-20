//
//  ContentView.swift
//  Drawing Activity Rings
//
//  Created by Monique Shaqiri on 15.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack( spacing: 20){
           Text("Today, 15 May 2021")
            .font(.largeTitle)
            .padding()
            Divider()
            ZStack{
            Circle()
                .trim(from: 0.5, to: 1.0)
                .stroke(Color.pink, lineWidth: 30)
                .frame(width: 300, height: 300)
                .rotationEffect(.degrees(90))
            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color.green, lineWidth: 30)
                .frame(width: 238, height: 238)
            Circle()
                .trim(from: 0.25, to: 1.0)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 176, height: 176)
                .rotationEffect(.degrees(-180))
                
            }.offset(x: -30, y: 30)
            
            
        }
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
