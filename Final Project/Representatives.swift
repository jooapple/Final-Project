//
//  Representatives.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct Representatives: View {
    @State var reps = ["78726":"Lloyd Doggett", "75035":"Pat Fallon","60490":"Lauren Underwood"]
    @State var rep: String = ""
    @State var text: String = ""
    var body: some View {
        ZStack {
            Color(red:12/256, green:36/256, blue:77/256)
                .ignoresSafeArea()
            
            VStack{
                Text("Representative Finder")
                    .font(Font.custom("PlayfairDisplay-Bold", size:40))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .offset(y:-220)
                //Text field to enter zip code
                TextField("Enter your Zip Code here", text: $text)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height:70)
                    .background(Color(red:101/256, green:139/256, blue:188/256))
                    .cornerRadius(10)
                    .padding(.all, 20.0)
                    .offset(y:-150)
                Button("Submit") {
                    if let representative = reps[text] {
                        rep = representative
                    }
                    else { rep = "No representative found for this zip code"
                    }
                }
                .frame(width: 200, height:70)
                .background(Color(red:125/256, green: 0/256, blue: 17/256))
                .cornerRadius(15)
                .foregroundColor(Color.white)
                .offset(y:-160)
                Text("\(rep)")
                    .foregroundColor(Color.white)
                    .font(Font.custom("PlayfairDisplay-Regular", size:20))
            }
        }
    }
    
}
#Preview {
    Representatives()
}
