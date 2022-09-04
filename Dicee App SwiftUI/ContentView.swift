//
//  ContentView.swift
//  Dicee App SwiftUI
//
//  Created by Oliver Lauridsen on 03/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)

                }) {
                    Text("Roll")
                        .font(.system(size:50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding()
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    var n: Int
    var body: some View {
        Image("dice\(n)")
            .padding(.all)
    }
}
