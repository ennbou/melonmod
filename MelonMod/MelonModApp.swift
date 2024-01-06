//
//  MelonModApp.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import SwiftUI

@main
struct MelonModApp: App {
  
  @State var isAppStarting = true
  
  var body: some Scene {
    WindowGroup {
      if(isAppStarting){
        LaunchScreen(isAppStarting: $isAppStarting)
      }else{
        ContentView()
      }
    }
  }
}
