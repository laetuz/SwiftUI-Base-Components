//
//  AsyncImageComp.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI

struct AsyncImageComp: View {
    let imageUrl: String
    let scale: CGFloat?
    let frameWidth: CGFloat?
    let frameHeight: CGFloat?
    let bgColor: Color?
    
    init(
        imageUrl: String,
        cgDefault: CGFloat? = 1,
        cgNil: CGFloat? = nil,
        scale: CGFloat? = 1,
        frameWidth: CGFloat? = nil,
        frameHeight: CGFloat? = nil,
        bgColor: Color? = nil
    ) {
        self.imageUrl = imageUrl
        self.scale = scale
        self.frameWidth = frameWidth
        self.frameHeight = frameHeight
        self.bgColor = bgColor
       }
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl), scale: scale ?? 1) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }.frame(
            width: frameWidth,
            height: frameHeight
            )
            .background(bgColor)
            .padding()
    }
}

#Preview {
    AsyncImageComp(imageUrl: "https://i0.wp.com/www.sciencenews.org/wp-content/uploads/2023/06/062623_CG_Megalodon_feat.jpg")
}
