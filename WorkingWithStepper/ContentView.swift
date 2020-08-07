//
//  ContentView.swift
//  WorkingWithStepper
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var stepperValue = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper")
                .font(.largeTitle)
            
            Stepper(value: $stepperValue, in: 1...9) {
                Text("Stepper")
            }
            // Hide label
            //.labelsHidden()
            .padding()
            
            HStack {
                ForEach(1...stepperValue, id: \.self) { i in
                    Image(systemName: "hand.thumbsup")
                        .font(.largeTitle)
                        .foregroundColor(.purple)
                }
            }
            
            Text("Stepper Value \(stepperValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
