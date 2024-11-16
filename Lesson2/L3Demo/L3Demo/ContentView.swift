//
//  ContentView.swift
//  L3Demo
//
//  Created by Cesar Pasillas on 15/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0){
                Image("castle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack {
                    Text("Mago Ñoño's Castle")
                        .font(.title)
                        .bold()
                    
                    Spacer() //If you have multiple spaces, the size of the space will dived by the number of spaces go get the size.
                    
                    VStack{
                        HStack{
                            //SF symbols
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            
                        }
                        
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.yellow) //This applies to all the views in the structure HStack
                    .font(.caption)
                    
                }
                
                Text("This is the Magos Ñoño Castle, you can visit it and learn a lot of amazing things.")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.white)
                .font(.caption)
                
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.indigo)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
