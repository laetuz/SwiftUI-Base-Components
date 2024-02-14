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
                    AsyncImage(url: URL(string: "https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2023/06/062623_CG_Megalodon_feat.jpg"), scale: 5) { image in
                        image.resizable().scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                        .frame(
                        width: 200,
                        height: 100
                        )
                        .background(Color.blue)
                        .padding()
                }.navigationTitle("AsyncImage")
                Spacer()
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
