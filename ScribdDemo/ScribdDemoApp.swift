//
//  ScribdDemoApp.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 10/04/2024.
//

import SwiftUI

@main
struct ScribdDemoApp: App {
    
    var body: some Scene {
        WindowGroup {
            TopChartsView(itemsToShow: SearchAPIMock.conductASearch())
                .preferredColorScheme(ColorScheme.dark) //I'd use device/app setting normally, but hardcoded it here since that is the theme used in the spec.
        }
    }
}
