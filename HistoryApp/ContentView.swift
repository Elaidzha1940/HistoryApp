//  /*
//
//  Project: HistoryApp
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.08.2023
//
//  Satatus: in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("main")
                VStack(spacing: 10) {
                    ScrollView {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 400, height: 400)
                                .background(
                                    Image("genghiskhan")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(90)
                                        .frame(width: 360, height: 300)
                                )
                            
                            Text("Genghis Khan")
                                .font(.system(size: 40, weight: .bold, design: .monospaced))
                                .foregroundColor(Color("text"))
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, alignment: .topLeading)
                                .padding(.top, 300)
                            
                            Text("")
                        }
                    }
                }
                .padding(.top, 30)
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
