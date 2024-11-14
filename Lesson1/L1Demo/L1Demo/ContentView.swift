//
//  ContentView.swift
//  L1Demo
//
//  Created by Cesar Pasillas on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Color(red: 0, green: 0, blue: 0)
        
        ZStack { //Allows to align from back to front
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                Image("castle")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Castle")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }
        }
       
        
    }
}

#Preview {
    ContentView()
}
