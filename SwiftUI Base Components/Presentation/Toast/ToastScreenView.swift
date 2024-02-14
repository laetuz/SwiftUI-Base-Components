//
//  Toast.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI

struct ToastScreenView: View {
    @State private var showToast = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                ToastComp(
                    toast: "Hello",
                    button: "Click for toast",
                    showToast: showToast
                )
                .padding()
            }
            .navigationTitle("Toast")
        }
    }
}

#Preview {
    ToastScreenView()
}
