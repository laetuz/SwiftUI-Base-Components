//
//  AsyncImage.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI

struct AsyncImageView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("This is an image of a shark.")
                    AsyncImageComp(imageUrl: "https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2023/06/062623_CG_Megalodon_feat.jpg")
                }.navigationTitle("AsyncImage")
                Spacer()
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
