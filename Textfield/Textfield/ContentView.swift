//
//  ContentView.swift
//  Textfield
//
//  Created by عبدالرحمن العامري on 03/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var userName = ""
    @State var fullName = ""
    
    
    
    var body: some View {
        
        
        ZStack{
            
            Color.gray.opacity(0.7)
                .ignoresSafeArea()
        
            VStack{
                Spacer()
                
                Text("Welcome back \(userName) !")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Text(fullName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color.brown)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
            Image("bg")
                .resizable()
                .padding(.all)
                .scaledToFit()
                .ignoresSafeArea()
                .clipShape(RoundedRectangle(cornerRadius: 100))
                .shadow(radius: 100)
                
                TextField("Type your username here", text: $userName)
                    .padding(.all)
                
                TextField("Type your full name here", text: $fullName)
                    .padding(.all)
                
                
                
                Spacer()
            }
            
            
        
        }
            
            
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
