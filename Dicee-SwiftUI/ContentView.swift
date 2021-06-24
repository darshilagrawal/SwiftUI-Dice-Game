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
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack {
                    diceView(n: leftDiceNumber)
                    
                    diceView(n: rightDiceNumber)
                    
                }.padding(.horizontal)
                
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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


