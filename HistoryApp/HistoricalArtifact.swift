//  /*
//
//  Project: HistoryApp
//  FHistoricalArtifact.swift
//
//
//  Created by Elaidzha Shchukin on 19.08.2023.
//

import SwiftUI

struct HistoricalArtifact: Identifiable {
    
    var id = UUID()
    var name: String
    var era: String
    var description: String
    var imageName: String
}

let sampleArtifatcs = [

 HistoricalArtifact (name: "Genghis Khan", era: "Genghis Khan (born Temüjin; c. 1162 – 25 August 1227), also known as Chinggis Khan, was the founder and first khagan of the Mongol Empire, which later became the largest contiguous land empire in history. Having spent the majority of his life uniting the Mongol tribes, he launched a series of military campaigns that conquered large parts of China and Central Asia.", description: "Born between 1155 and 1167 and given the name Temüjin, he was the oldest child of Yesugei, a Mongol chieftain of the Borjigin clan, and his wife Hoelun of the Olkhonud clan. Yesugei died when Temüjin was eight, and his family was abandoned by their tribe in the Mongol steppe. Temüjin gradually built up a small following and allied with Jamukha and Toghrul, two other Mongol chieftains, in campaigns against other Mongol tribes. Due to the erratic nature of the sources, this period of Temüjin's life is uncertain; he may have spent this time as a servant of the Jin dynasty. The alliances with Jamukha and Toghrul failed completely in the early 13th century, but Temüjin was able to defeat both individuals and claim sole rulership over the Mongol tribes. He formally adopted the title Genghis Khan at a kurultai in 1206.", imageName: "genghiskhanhorse")
]
