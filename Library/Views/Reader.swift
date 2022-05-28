//
//  Reader.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/26/22.
//

import SwiftUI

struct Reader: View {
    
    @EnvironmentObject var model:BooksModel
    @State private var page = 0
    var books: Books
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(books.content.indices){ index in
                VStack{
                    Text(books.content[index])
                        .tag(index)
                    Text("\(page+1)")
                }
                
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { value in
            model.CurrentPage(ID: books.id, Page: page)
        })
        .onAppear {
            page = books.currentPage
        }
    }
}

struct Reader_Previews: PreviewProvider {
    static var previews: some View {
        Reader(books: Books())
            .environmentObject(BooksModel())
    }
}
