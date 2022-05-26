//
//  LibraryApp.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/24/22.
//

import SwiftUI

@main
struct LibraryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BooksModel())
        }
    }
}
