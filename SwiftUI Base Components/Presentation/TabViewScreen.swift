//
//  TabViewScreen.swift
//  SwiftUI Base Components
//
//  Created by Ryo Martin on 15/02/24.
//

import SwiftUI

struct TabViewScreen: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Profile")
                .tabItem { Label("Profile", systemImage: "person.circle.fill") }
        }.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewScreen()
}
