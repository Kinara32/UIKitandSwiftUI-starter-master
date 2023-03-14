//
//  DetailScreen.swift
//  UIKit&SwiftUI
//
//  Created by Matvei Bykadorov on 15.03.2023.
//  Copyright © 2023 Алексей Пархоменко. All rights reserved.
//

import SwiftUI

struct DetailScreen: View {
    
    var object: Post
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 20) {
                Image(uiImage: object.image)
                    .resizable()
                    .cornerRadius(30)
                    .frame(width: 170, height: 170)
                    .shadow(radius: 30)
                Text(object.text)
                    .font(.title)
                    .lineLimit(nil)
            }
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Описание")
                    .font(.title)
                Text(object.descriprion)
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: Post.data[0])
    }
}
