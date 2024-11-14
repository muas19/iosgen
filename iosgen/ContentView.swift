//
//  ContentView.swift
//  iosgen
//
//  Created by leon muasya on 11/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
          CardView(isFaceUp: true)
          CardView()
            CardView()
            CardView(isFaceUp: true)
        }
        .padding()
        .foregroundColor(.green)
    }
}



struct CardView: View{
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 4)
                Text("😴").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
