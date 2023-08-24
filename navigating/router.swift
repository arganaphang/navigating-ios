//
//  router.swift
//  navigating
//
//  Created by Argana Phangquestian on 25/08/23.
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case home
        case detail
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}

