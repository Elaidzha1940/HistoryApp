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
    
    var artifact: [HistoricalArtifact]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("main")
                VStack(spacing: 10) {
                    ScrollView {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                            // .frame(width: 400, height: 400)
                                .background(
                                    Image("genghiskhan")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(200)
                                        .frame(width: 350, height: 300)
                                )
                            
                            Text("Genghis Khan")
                                .font(.system(size: 40, weight: .bold, design: .monospaced))
                                .foregroundColor(Color("text"))
                                .multilineTextAlignment(.leading)
                                .frame(width: 350, alignment: .topLeading)
                                .padding(.top, 450)
                        }
                        Text("There is no universally adopted system of transliterating original Mongolian names into English; many different systems and standards continue to be in use today, resulting in modern spellings that often differ considerably from the original pronunciation. Ultimately, the honorific most commonly spelt Genghis derives from the autochthonous Mongolian ᠴᠢᠩᠭᠢᠰ ᠬᠠᠭᠠᠨ (Mongolian pronunciation: [t͡ʃʰiŋɡɪs xaːŋ]), most closely represented in English by the spelling Čhinggis.")
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("text"))
                            .padding()
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 375, height: 2)
                            .background(Color("text"))
                        ForEach(artifact) { artifact in
                            NavigationLink(destination: ArtifactDetail(artifact: artifact)) {
                                VStack {
                                    Text(artifact.name)
                                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                                        .foregroundColor(Color("text"))
                                    
                                    HStack{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 175, height: 175)
                                            .background(
                                                Image(artifact.imageName)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 175, height: 175)
                                            )
                                            .cornerRadius(30)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding()
                                        
                                        Text(artifact.era)
                                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("text"))
                                        
                                    }
                                }
                            }
                        }
                    }
                    .navigationBarItems(leading: Image(systemName: "chevron.left"))
                    .foregroundColor(Color("text"))
                    .font(.title2)
                }
                .padding(.top, 30)
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(artifact: sampleArtifatcs)
    }
}

struct ArtifactDetail: View {
    var artifact: HistoricalArtifact
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        ScrollView {
            VStack {
                Image(artifact.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea(edges: .top)
                    .offset(y: -10)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 615, height: 715)
                        .background(Color("text"))
                        .blur(radius: 115)
                        .offset(y: 660)
                    
                    Text(artifact.name)
                        .font(.system(size: 40, weight: .bold, design: .monospaced))
                        .foregroundColor(Color("text"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, alignment: .topLeading)
                        .padding(.top, -500)
                    
                    Text(artifact.description)
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                        .foregroundColor(Color("text"))
                        .frame(width: 370, alignment: .topLeading)
                        .padding(.top, 50)
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left.circle.fill")
                    .font(.title)
            }
            .foregroundColor(.white.opacity(0.5))
        }
        )
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(.container, edges: .top)
    }
}
