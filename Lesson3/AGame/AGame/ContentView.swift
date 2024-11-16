//
//  ContentView.swift
//  AGame
//
//  Created by Cesar Pasillas on 15/11/24.
//

import SwiftUI

struct ContentView: View {
    
    //@State is a property wrapper is like a modifier
    @State var playerCard = "card13"
    @State var cpuCard = "card12"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
        
                //Image("button")
                
                Button(){
                    dealCards()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack(alignment: .center){
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom)
                     
                    }
                    Spacer()
                    VStack(alignment: .center){
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    
    func dealCards(){
        
        var cardPlayer = Int.random(in: 2...14)
        var cardCpu = Int.random(in: 2...14)
        playerCard = "card" + String(cardPlayer)
        cpuCard = "card" + String(cardCpu)
        
        if cardPlayer > cardCpu {
            playerScore = playerScore + 1
        } else if cardPlayer < cardCpu {
            cpuScore = cpuScore + 1
        } else {
            print("is a Tie")
        }
    }
}

#Preview {
    ContentView()
}
