//
//  LaunchScreen.swift
//  MelonMod
//
//  Created by ENNBOU on 1/6/24.
//

import SwiftUI

struct LaunchScreen: View {
  
  @Binding var isAppStarting: Bool
  @State var offset: CGFloat = -300
  
  let LOADING_TIME: UInt64 = 5_000_000_000
  
  var body: some View {
    GeometryReader{ geometry in
      VStack{
        Text("Melon Mods App")
          .font(.largeTitle)
        ZStack{
          Rectangle()
            .frame(height: 32)
            .foregroundColor(.black)
            .clipShape(Capsule())
          Rectangle()
            .frame(width: geometry.size.width * 0.7 * 0.3,height: 16)
            .clipShape(Capsule())
            .foregroundColor(.white)
            .offset(x: offset)
            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: offset)
        }
        .onAppear{
          offset = 300
        }
        .clipShape(.capsule)
        .frame(width: geometry.size.width * 0.7)
        Text("Loading ....")
      }
      .frame(width: geometry.size.width ,height: geometry.size.height)
    }
    .task {
      try? await Task.sleep(nanoseconds: LOADING_TIME)
      isAppStarting = false
    }
  }
}

#Preview {
  LaunchScreen(isAppStarting: .constant(true))
}
