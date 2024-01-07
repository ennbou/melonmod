//
//  MainNavHeader.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import SwiftUI

struct MainNavHeader: View {
  
  @Binding var mainNavigationStack: [BottomBarItemModel]
  
  var body: some View {
    if let selectedScreen = mainNavigationStack.first {
      VStack(spacing: 0){
        HStack{
          Button(action:{}){
            Image(systemName: "crown.fill")
              .font(.title)
              .foregroundStyle(.yellow)
              .padding(.horizontal,12)
          }
          Spacer()
          Text(selectedScreen.name)
            .font(.largeTitle)
            .foregroundStyle(.white)
          Spacer()
          Button(action:{}){
            Text("50")
              .foregroundStyle(.white)
            Image(systemName: "dollarsign.circle")
              .foregroundStyle(.orange)
              .font(.title)
              .padding(.trailing, 12)
          }
        }
        .padding(.vertical, 10)
        HStack{
          Button(action:{}){
            Image(systemName: "person.crop.circle")
              .font(.title)
            Text("Log in")
              .font(.title2)
          }.foregroundStyle(.white)
          Spacer()
          Button(action: {}){
            Image(systemName: "magnifyingglass.circle")
              .font(.title)
              .foregroundStyle(.white)
          }
        }
        .padding(12)
        .background(.gray.opacity(0.5))
      }
      .background(.black.opacity(0.7))
    }else{
      EmptyView()
    }
  }
}

#Preview {
  MainNavHeader(mainNavigationStack: .constant([BottomBarItemModel.items[0]]))
}
