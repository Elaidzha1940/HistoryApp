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
            VStack(spacing: 10) {
                ScrollView {
                    ZStack {
                         
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 400, height: 400)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
