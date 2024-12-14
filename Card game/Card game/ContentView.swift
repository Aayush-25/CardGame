//
//  ContentView.swift
//  Card game
//
//  Created by aayush on 27/07/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerOne = "card7"
   @State var cpu = "card8"
    
   @State var playerScore = 0
   @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("bg-1")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerOne)
                    Spacer()
                    Image(cpu)
                    Spacer()
                }
                
                Spacer()
                
                
                Button(action: {
                    deal()
                },label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                    
            }
            
            
        }
    }
    
    
    
    func deal(){
        // randomise the playercard
        var player = Int.random(in: 2...14)
        playerOne = "card" + String(player)
        
        // randomise the cpucard
        var cpu1 = Int.random(in: 2...14)
        cpu = "card" + String(cpu1)
        
        // updating score
        if player > cpu1 {
            playerScore += 1
        }
        else if cpu1 > player {
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
