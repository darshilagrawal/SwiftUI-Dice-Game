//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Darshil Agrawal on 01/08/20.
//  Copyright © 2020 Darshil Agrawal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber=1
    @State var rightDiceNumber=1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n: leftDiceNumber)
                    
                    diceView(n: rightDiceNumber)
                    
                }.padding(.horizontal)
                
                Spacer()
                Button(action: {
                    self.leftDiceNumber=Int.random(in: 1...6)
                    self.rightDiceNumber=Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                
                .background(Color.red)
            }
        }
    }
    
}
struct diceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


