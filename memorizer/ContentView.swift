//
//  ContentView.swift
//  memorizer
//
//  Created by sanjoypator on 13/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Hstack for horizontal
        return HStack{
            
            //if the last argument is a view than u can get rid of that content: keyword
            
            ForEach(0..<4){ index in
               
                //just calling the CardView just like a function
                CardView(isFaceUp: false)
                
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        
    }
}

//more refactoring

struct CardView: View {
    
    var isFaceUp: Bool
    
    var body: some View{
        
        //all the previous codes - Zstack codes
        ZStack{
            
            //if faceup == true simple
            if isFaceUp{
                
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                Text("👻")
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
                
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() // Initialize your struct
    }
}
