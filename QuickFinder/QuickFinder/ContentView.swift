//
//  ContentView.swift
//  QuickFinder
//
//  Created by Vishnu Penubarthi on 8/11/20.
//  Copyright © 2020 Vishnu Penubarthi. All rights reserved.
//

import SwiftUI //Necessary import statement for all Swift UI Stuff

struct ContentView: View { //This is the primary thing necessary for all types of content view
    var body: some View {
        //Every view needs this body thing to specify body
    
        VStack(content: { //Just Like Android, iOS has stacks and stuff depending on what we want to do with all of this
            
            ForEach(0..<8, content: { index in //You can have for each loops, for loops, and all the usual stuff in swift as well, the index is the iterating variable
                
                CardView(value: index) //You can create instance of a struct those many times, in this case, created the CardView Struct I defined below
                
                
                
            })
        })
        
        .padding() //If we Specify things like this at the end of the VStack, it will apply to all the things in the VStack, aka it will be the default stuff unless specified otherwise, so can set text related properties and other things at this level itself
        .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        
    }
}

struct CardView: View { //This is where we create a struct object
    var isFaceUp : Bool = true //Just like C, we declare the variables
    //Var can be mutated whereas we use let if we want to set a strict typing and/or value
    let value: Int
    
    init(value: Int) { //Super useful if we want to do different things and pass in different values based the different things that we want in the application
        self.value = value //We use self just like Python to set our values
    }
    //Any struct that instatniates the view class is required to have this var body, where we declare how it looks
    var body: some View {
        ZStack(content: { //Zstack will stack things with last thing at the top
            if self.value % 2 == 0
            {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white) //A rectangle that is rounded, and it has different properties
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("Hello").foregroundColor(Color.purple)
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }

        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
