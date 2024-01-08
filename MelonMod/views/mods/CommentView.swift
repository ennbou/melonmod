//
//  CommentView.swift
//  MelonMod
//
//  Created by ENNBOU on 1/8/24.
//

import SwiftUI

struct CommentView: View {
  
  let comment: String
  
  var body: some View { 
    VStack(alignment: .leading){
      HStack{
        Image(systemName: "person.crop.circle.badge")
          .font(.title)
        Text("@UserX")
          .font(.title2.bold())
      }
      Text(comment)
    }
  }
}

#Preview {
  CommentView(comment:"comment content")
}
