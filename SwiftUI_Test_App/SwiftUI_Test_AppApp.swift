//
//  SwiftUI_Test_AppApp.swift
//  SwiftUI_Test_App
//
//  Created by Alphonso Sensley II on 3/1/21.
//

import SwiftUI

@main
struct SwiftUI_Test_AppApp: App {
    var search = Search()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(search)
        }
    }
}
