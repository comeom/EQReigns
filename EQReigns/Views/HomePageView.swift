//
//  HomePageView.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        
        VStack {
            NavigationView {
                NavigationLink(
                    destination: InGameView(),
                    label: {
                    Text("Play")
                })
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
