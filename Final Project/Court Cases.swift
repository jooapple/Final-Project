//
//  Court Cases.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct Court_Cases: View {
    var body: some View {
        NavigationStack{
          ZStack{
            Color(red: 12/256, green: 36/256, blue: 77/256)
              .ignoresSafeArea()
            VStack{
              Text("Court Cases")
                .font(Font.custom("PlayfairDisplay-Regular", size:60))
              //  .font(.system(size: 65))
              //  .font(.title)
                .foregroundColor(.white)
                .offset(y: -10)
              Text("Recent Cases")
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 155)
                .font(Font.custom("PlayfairDisplay-Regular", size:35))
              HStack{
                VStack{
                  Image("courtCase")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                  NavigationLink(destination: trumpUS()) {
                    Text("Trump vs \n United States ")
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .font(Font.custom("PlayfairDisplay-Regular", size:25))
                  }
                }
                .padding(15)
                //  .padding(.bottom, 15)
                VStack{
                  Image("fischer")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                  NavigationLink(destination: fischer()) {
                    Text("Fischer vs \n United States")
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .font(Font.custom("PlayfairDisplay-Regular", size:25))              .padding(.top, 2)
                  }
                }
                .padding(1)
              }
              .padding(1)
              //Color(red: 125/256, green: 0/256, blue: 17/256)
              .background(Rectangle() .foregroundColor(Color(red: 0.49, green: 0.0, blue: 0.0)))
              .cornerRadius(15)
              //.padding(.top, 0)
              Text("Major Historical Cases")
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 17)
                .font(Font.custom("PlayfairDisplay-Regular", size:35))          //   .padding(.top, 10)
              HStack{
                VStack{
                  Image("marbury")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                  NavigationLink(destination: marbury()) {
                    Text("Marbury vs \n Madison")
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .font(Font.custom("PlayfairDisplay-Regular", size:25))
                  }
                }
                .padding(12.0)
                VStack{
                  Image("roe")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                  NavigationLink(destination: Roe()) {
                    Text("Roe vs \n Wade")
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .font(Font.custom("PlayfairDisplay-Regular", size:25))
                  }
                }
                .padding(12.0)
              }
              .background(Rectangle() .foregroundColor(Color(red: 0.49, green: 0.0, blue: 0.0)))
              .cornerRadius(15)
            }
          }
        }
      }
    }

#Preview {
    Court_Cases()
}
