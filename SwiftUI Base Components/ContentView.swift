//
//  ContentView.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 14/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ToastScreenView()
            AsyncImageView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
