//
//  ToastComp.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI
import ToastUI

struct ToastComp: View {
    @State var showToast = false
    let toastText: String
    let buttonText: String?
    
    init(
        toast toastText: String,
        button buttonText: String? = "Show Toast",
        showToast: Bool = false
    ) {
        self.showToast = showToast
        self.toastText = toastText
        self.buttonText = buttonText
    }
    
    var body: some View {
        Button {
            showToast = true
        } label: {
            Text(buttonText ?? "")
                .bold()
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5.0)
        }
        .toast(isPresented: $showToast, dismissAfter: 1.0) {
            ToastView {
                Text(toastText)
            }
        }
    }
}

#Preview {
    ToastComp(toast: "dfss")
}
