//
//  ModModel.swift
//  MelonMod
//
//  Created by ENNBOU on 1/8/24.
//

import Foundation

struct ModModel: Identifiable {
  let id = UUID()
  let name: String
  let comments: [String]
  let numberOfDownloads: Int
  let numberOfLikes: Int
}


extension ModModel{
  private static let modsMock:[ModModel] = [
    ModModel(name: "Lethal company", comments: [], numberOfDownloads: 58, numberOfLikes: 0),
    ModModel(name: "Elite speaker man", comments: ["Good"], numberOfDownloads: 527, numberOfLikes: 0),
    ModModel(name: "Upgrade titan speaker man", comments: [], numberOfDownloads: 1644, numberOfLikes: 0),
    ModModel(name: "Characters From the web series Skibidi toilet", comments: [], numberOfDownloads: 488, numberOfLikes: 0),
    ModModel(name: "Skibidi Toilet Verse", comments: [], numberOfDownloads: 710, numberOfLikes: 0),
    ModModel(name: "Skibidi Hybrids", comments: [], numberOfDownloads: 327, numberOfLikes: 0),
    ModModel(name: "Plunger Men 2.0", comments: ["to women"], numberOfDownloads: 222, numberOfLikes: 1),
    ModModel(name: "TV Mans", comments: [], numberOfDownloads: 234, numberOfLikes: 0),
    ModModel(name: "paok for METRO 2033", comments: [], numberOfDownloads: 22, numberOfLikes: 0),
    ModModel(name: "FIRE HAVEN WUBBOX", comments: [], numberOfDownloads: 58, numberOfLikes: 0),
    ModModel(name: "Lethal company", comments: [], numberOfDownloads: 58, numberOfLikes: 0),
    ModModel(name: "Elite speaker man", comments: ["Good"], numberOfDownloads: 527, numberOfLikes: 0),
    ModModel(name: "Upgrade titan speaker man", comments: [], numberOfDownloads: 1644, numberOfLikes: 0),
    ModModel(name: "Characters From the web series Skibidi toilet", comments: [], numberOfDownloads: 488, numberOfLikes: 0),
    ModModel(name: "Skibidi Toilet Verse", comments: [], numberOfDownloads: 710, numberOfLikes: 0),
    ModModel(name: "Skibidi Hybrids", comments: [], numberOfDownloads: 327, numberOfLikes: 0),
    ModModel(name: "Plunger Men 2.0", comments: ["to women"], numberOfDownloads: 222, numberOfLikes: 1),
    ModModel(name: "TV Mans", comments: [], numberOfDownloads: 234, numberOfLikes: 0),
    ModModel(name: "paok for METRO 2033", comments: [], numberOfDownloads: 22, numberOfLikes: 0),
    ModModel(name: "FIRE HAVEN WUBBOX", comments: [], numberOfDownloads: 58, numberOfLikes: 0)
  ]
  static let mods:[String:[ModModel]] = [
    "Trending" : Array(ModModel.modsMock[0..<9]),
    "Titans": Array(ModModel.modsMock[3..<11]),
    "NPC": Array(ModModel.modsMock[5..<19]),
    "Melsaves": Array(ModModel.modsMock[4..<18]),
    "Monsters": Array(ModModel.modsMock[5..<18]),
    "Vehicles": Array(ModModel.modsMock[1..<18]),
    "Soldiers": Array(ModModel.modsMock[2..<18]),
    "Weapons": Array(ModModel.modsMock[3..<18]),
  ]
}
