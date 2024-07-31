//
//  ContentView.swift
//  Final Project
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red:12/256, green:36/256, blue:77/256)
                    .ignoresSafeArea()
                Image("flag")
                    .padding()
                    .offset(y: -270)
                Spacer()
                //Title
                Text("DemocraTECH")
                    .font(Font.custom("PlayfairDisplay-Bold", size:55))
                    .foregroundColor(Color.white)
                    .offset(y:-80)
                VStack{
                    //Description
                    Text("Take the first step in being an educated voter.\n Click to explore more")
                        .foregroundColor(Color.white)
                        .font(Font.custom("PlayfairDisplay-Regular", size:15))
                        .multilineTextAlignment(.center)
                        .offset(y:50)
                    //Court Cases + Representatives button
                    HStack{
                        //Court Cases button + text
                        VStack{
                            NavigationLink(destination: Court_Cases()){
                                Image("gavel")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:100, height:100)
                            }
                            
                            Text("Court Cases")
                                .foregroundColor(Color.white)
                                .font(Font.custom("PlayfairDisplay-Regular", size:20))
                        }
                        .offset(x:-35,y:50)
                        //Representatives button + text
                        VStack{
                            NavigationLink(destination: Representatives()){
                                Image("person")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:100, height:100)
                            }
                                                        Text("Representatives")
                                .foregroundColor(Color.white)
                                .font(Font.custom("PlayfairDisplay-Regular", size:20))
                                
                        }
                        .offset(x:50,y:50)

                    }
                    HStack{
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
