//
//  ContentView.swift
//  iOSPedia
//
//  Created by 이재웅 on 2022/04/29.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ContentList()
                .navigationTitle("Curry의 iOSPedia")
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
