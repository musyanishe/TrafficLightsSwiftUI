//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Евгения Шевцова on 11.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    
    @State private var redCircleOpacity = 0.3
    @State private var yellowCircleOpacity = 0.3
    @State private var greenCircleOpacity = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func buttonPressed() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            redCircleOpacity = lightIsOn
            greenCircleOpacity = lightIsOff
            currentLight = .yellow
        case .yellow:
            redCircleOpacity = lightIsOff
            yellowCircleOpacity = lightIsOn
            currentLight = .green
        case .green:
            yellowCircleOpacity = lightIsOff
            greenCircleOpacity = lightIsOn
            currentLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 10) {
                ColorCircleView(color: .red, opacity: redCircleOpacity)
                ColorCircleView(color: .yellow, opacity: yellowCircleOpacity)
                ColorCircleView(color: .green, opacity: greenCircleOpacity)
                Spacer()
                
                ButtonView(buttonTitle: buttonTitle) {
                    self.buttonTitle = "Next"
                    buttonPressed()
                }
            }.padding()
                .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
