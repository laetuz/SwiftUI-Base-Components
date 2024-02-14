//
//  Toast.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI
import ToastUI

struct ToastScreenView: View {
    @State private var showToast = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button {
                    showToast = true
                } label: {
                    Text("Show Toast")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                .padding()
            }
            .toast(isPresented: $showToast, dismissAfter: 1.0) {
                ToastView {
                    Text("This is a toast.")
                }
            }
            .navigationTitle("Toast")
        }
    }
}

#Preview {
    ToastScreenView()
}
