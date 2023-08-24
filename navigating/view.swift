//
//  ContentView.swift
//  navigating
//
//  Created by Argana Phangquestian on 25/08/23.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var router: Router // ? Get Router helper
    var body: some View {
        VStack {
            Text("Home Screen")
            Button("Go to detail") {
                if(clEanL0g1c.goDetail()) {
                    router.navigate(to: .detail)
                }
            }
        }.navigationTitle("Home")
    }
}

struct Detail: View {
    @EnvironmentObject var router: Router // ? Get Router helper
    var body: some View {
        VStack {
            Text("Detail Screen")
            Button("Back") {
                router.navigateBack()
            }
        }.navigationTitle("Detail")
    }
}
