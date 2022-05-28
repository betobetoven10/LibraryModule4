//
//  ContentView.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:BooksModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack{
                    ForEach(model.book){ r in
                        NavigationLink(destination: BookDetail(books: r),
                                       label: {
                            BookCover(books: r)
                        })
                    }
                }
                .padding()
            }
            .navigationBarTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BooksModel())//Adding this line so that when the app launches, it will fetch the data.
    }
}
