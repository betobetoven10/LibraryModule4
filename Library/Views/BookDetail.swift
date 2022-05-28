//
//  BookDetail.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/26/22.
//

import SwiftUI

struct BookDetail: View {
    @EnvironmentObject var model:BooksModel
    @State private var rating = 0
    var books: Books
    
    var body: some View {
        VStack{
            Text(books.title)
                NavigationLink(destination: Reader(),
                               label: {
                    VStack{
                        Text("Read Now")
                            let beto = String(books.id)
                                Image("cover" + beto)
                                    .resizable()
                                    .clipped()
                                    .aspectRatio(contentMode: .fit)
                    }
                })

            Text("Save for later")
            Image(systemName: "star.fill")
            Text("Rate \(books.title)")
        }
    }
}



struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(books: Books())
            .environmentObject(BooksModel())
    }
}
