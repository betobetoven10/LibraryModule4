//
//  BookCover.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/28/22.
//

import SwiftUI

struct BookCover: View {
    
    var books: Books
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
            VStack{
                HStack{
                    VStack{
                        Text(books.title)
                        Text(books.author)
                    }
                    Spacer()
                    Image(systemName: "star.fill")
                }
                Image("cover\(books.id)")
                    .resizable()
                    .clipped()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct BookCover_Previews: PreviewProvider {
    static var previews: some View {
        BookCover(books: Books())
    }
}
