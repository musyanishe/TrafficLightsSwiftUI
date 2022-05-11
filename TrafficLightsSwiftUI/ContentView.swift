//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Евгения Шевцова on 11.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
                
            VStack{
                ColorCircleView(color: .red)
                ColorCircleView(color: .yellow)
                ColorCircleView(color: .green)
                Spacer()
                ButtonView()
            }.padding()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
