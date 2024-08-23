//
//  MeusLivrosApp.swift
//  MeusLivros
//
//  Created by Bruno Gomes de Souza on 22/08/24.
//

import SwiftUI

@main
struct MeusLivrosApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
    
    init(){
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
