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
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
            VStack{
                HStack{
                    VStack (alignment: .leading) {
                        Text(books.title)
                            .bold()
                            .font(.title)
                        Text(books.author)
                    }
                    Spacer()
                    if books.isFavourite {
                    Image(systemName: "star.fill")
                            .resizable()
                            .accentColor(.yellow)
                            .frame(width: 40, height: 40)
                        
                    }
                }
                Image("cover\(books.id)")
                    .resizable()
                    .clipped()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
        }
        .accentColor(.black)

    }
}

struct BookCover_Previews: PreviewProvider {
    static var previews: some View {
        BookCover(books: Books())
    }
}
