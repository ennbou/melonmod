//
//  ModItemView.swift
//  MelonMod
//
//  Created by ENNBOU on 1/8/24.
//

import SwiftUI

struct ModItemView: View {
 
  let mod: ModModel
  
  var body: some View {
    ZStack(alignment:.bottom){
      Image("melonmod")
        .resizable()
        .aspectRatio(contentMode: .fit)
      HStack{
        VStack(alignment:.leading){
          Text(mod.name)
            .lineLimit(1)
            .font(.subheadline)
            .foregroundStyle(.white)
          Text("01/05/2024 10:34 AM")
            .font(.subheadline)
            .foregroundStyle(.white)
            .lineLimit(1)
        }
        .padding(.leading, 12)
        Spacer()
        Image(systemName: "message.fill")
          .font(.subheadline)
          .foregroundStyle(.white)
        Text(mod.comments.count.description)
          .foregroundStyle(.white)
        Rectangle().fill(Color.white.opacity(0.5)).frame(width: 2,height: 30)
        Image(systemName: "arrow.down.circle")
          .font(.subheadline)
          .foregroundStyle(.white)
        Text(mod.numberOfDownloads.description)
          .font(.subheadline)
          .foregroundStyle(.white)
        Rectangle().fill(Color.white.opacity(0.5)).frame(width: 2,height: 30)
        Image(systemName: "hand.thumbsup.fill")
          .font(.subheadline)
          .foregroundStyle(.white)
        Text(mod.numberOfLikes.description)
          .font(.subheadline)
          .foregroundStyle(.white)
          .padding(.trailing, 12)
      }
      .padding(.vertical, 8)
      .background(.gray.opacity(0.7))
    }
  }
}

#Preview {
  ModItemView(mod: ModModel(name: "Mod Name", comments: ["comment1","comment2"], numberOfDownloads: 50, numberOfLikes: 0))
}
