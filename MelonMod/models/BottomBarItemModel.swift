//
//  BottomBarItemModel.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import Foundation

struct BottomBarItemModel: Identifiable, Hashable {
  let id = UUID()
  let name: String
  let content: String
  let icon: String
}

extension BottomBarItemModel {
  static let items:[BottomBarItemModel] = [
    BottomBarItemModel(name:"Mods",content:"Mods Screen",icon:"circle.grid.3x3.circle.fill"),
    BottomBarItemModel(name:"My works",content:"My Works Screen",icon:"folder.fill"),
    BottomBarItemModel(name:"Community",content:"Community Screen",icon:"person.3.fill"),
    BottomBarItemModel(name:"Profile",content:"Profile Screen",icon:"person.crop.circle.fill"),
    BottomBarItemModel(name:"Settings",content:"Settings Screen",icon:"gearshape.fill")
  ]
}
