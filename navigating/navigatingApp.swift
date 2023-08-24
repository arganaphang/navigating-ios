//
//  navigatingApp.swift
//  navigating
//
//  Created by Argana Phangquestian on 25/08/23.
//

import SwiftUI

@main
struct navigatingApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                Home()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .home:
                            Home()
                        case .detail:
                            Detail()
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
