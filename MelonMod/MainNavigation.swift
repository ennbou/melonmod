//
//  MainNavigation.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import SwiftUI

struct MainNavigation: View {
  
  @State var mainNavigationStack: [BottomBarItemModel] = [BottomBarItemModel.items.first!]
  
  var body: some View {
    VStack{
      if(mainNavigationStack[0].name != "Profile" ){
        MainNavHeader(mainNavigationStack: $mainNavigationStack)
      }
      
      NavigationStack(path: $mainNavigationStack){
        HStack{
          
        }.navigationDestination(for: BottomBarItemModel.self){ item in
          Text(item.content)
            .navigationBarBackButtonHidden()
        }
      }
      HStack{
        ForEach(BottomBarItemModel.items){ item in
          BottomBarItem(mainNavigationStack: $mainNavigationStack, data: item)
            .frame(maxWidth: .infinity)
        }
      }
    }
  }
}

#Preview {
  MainNavigation()
}
