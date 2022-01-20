//
//  ContentView.swift
//  ColPicky
//
//  Created by Vansh Maheshwari on 20/01/22.
//


import SwiftUI

struct ContentView: View {
    
    @State private var r:Double = 0
    @State private var g:Double = 0
    @State private var b:Double = 0
    
    var body: some View {
        
        VStack {
            Circle()
                .frame(width: 350, height: 400)
                .foregroundColor(Color(red: r/255, green: g/255, blue: b/255))
            
            SliderView(value: $r, label: "Red")
                .padding()
                .border(Color.black, width: 2)
            SliderView(value: $g, label: "Green")
                .padding()
                .border(Color.black, width: 2)
            SliderView(value: $b, label: "Blue")
                .padding()
                .border(Color.black, width: 2)
            
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
