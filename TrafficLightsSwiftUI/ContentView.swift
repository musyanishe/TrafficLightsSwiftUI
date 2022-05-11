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
                ColorCircleView(color: .red.opacity(1))
                ColorCircleView(color: .yellow.opacity(0.3))
                ColorCircleView(color: .green.opacity(0.3))
                Spacer()
                ButtonView()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
