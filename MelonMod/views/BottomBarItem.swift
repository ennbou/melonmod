//
//  BottomBarNavigation.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import SwiftUI

struct BottomBarItem: View {
  
  @Binding var mainNavigationStack: [BottomBarItemModel]
  
  let data: BottomBarItemModel
  
  var body: some View {
    Button(action: {
      mainNavigationStack = [data]
    }){
      VStack{
        Image(systemName: data.icon)
          .font(.title2)
          .foregroundStyle(mainNavigationStack[0] == data ? .black : .gray.opacity(0.8))
        Text(data.name)
          .foregroundStyle(mainNavigationStack[0] == data ? .black : .gray.opacity(0.8))
          .font(.caption)
          .lineLimit(1)
      }
    }
  }
}

#Preview {
  BottomBarItem(mainNavigationStack: .constant([BottomBarItemModel.items[0]]), data: BottomBarItemModel.items[0])
}
