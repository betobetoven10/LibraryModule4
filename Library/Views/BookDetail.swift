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
            
            Button{
                model.SaveForLater(ID: books.id)
            } label: {
                if books.isFavourite{
                Image(systemName: "star.fill")
                } else
                {
                    Image(systemName: "star")
                }
            }
            
            
            
            Text("Rate \(books.title)")
            Picker("", selection: $rating){
                ForEach(1..<6){ r in
                    Text("\(r)").tag(r)
                }
            }
            .pickerStyle(.segmented)
            .onChange(of: rating, perform: { newValue in
                model.ChangeRating(ID: books.id, rating: rating)
            })
        }
        .navigationTitle(books.title)
        .onAppear{ rating = books.rating }
    }
}



struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(books: Books())
            .environmentObject(BooksModel())
    }
}
