//
//  ModsScreen.swift
//  MelonMod
//
//  Created by ENNBOU on 1/7/24.
//

import SwiftUI

struct ModsScreen: View {
  
  @State var selectedTab: Int = 0
  
  let tabs = ["Trending", "Titans", "NPC", "Melsaves", "Monsters", "Vehicles", "Soldiers", "Weapons"]
  
  var body: some View {
    VStack{
      ScrollViewReader{ proxy in
        ScrollView(.horizontal){
          HStack{
            ForEach(0..<tabs.count, id: \.self){ index in
              Button(action:{
                selectedTab = index
              }){
                Text(tabs[index])
                  .font(.title3)
                  .padding(6)
                  .frame(width: 120)
              }.id(index)
                .background(index == selectedTab ? .black.opacity(0.7) : .gray.opacity(0.7))
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
          }.padding(.horizontal)
        }.scrollIndicators(.hidden)
          .onChange(of: selectedTab){ index in
            withAnimation(.spring()) {proxy.scrollTo(index, anchor: .top)}
          }
      }
      TabView(selection: $selectedTab){
        ForEach(0..<tabs.count, id:\.self){index in
          List{
            ForEach(0..<ModModel.mods[tabs[index]]!.count, id:\.self){ itemIndex in
              ModItemView(mod: ModModel.mods[tabs[index]]![itemIndex])
            }
          }.tag(index)
            .listStyle(PlainListStyle())
        }
      }.tabViewStyle(.page(indexDisplayMode: .never))
    }
  }
}

#Preview {
  ModsScreen()
}
