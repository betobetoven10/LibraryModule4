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
                            .font(.title)
                            let beto = String(books.id)
                                Image("cover" + beto)
                                    .resizable()
                                    .scaledToFit()
                    }
                })

            
            Spacer()
            Text("Save for later")
                .font(.title2)
            
            Button{
                model.SaveForLater(ID: books.id)
            } label: {
                if books.isFavourite{
                Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                } else
                {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            .accentColor(.yellow)
            Spacer()
            Text("Rate \(books.title)")
                .font(.title2)
            Picker("", selection: $rating){
                ForEach(1..<6){ r in
                    Text("\(r)").tag(r)
                }
            }
            .pickerStyle(.segmented)
            .onChange(of: rating, perform: { newValue in
                model.ChangeRating(ID: books.id, rating: rating)
            })
            .padding()
        }
        .navigationTitle(books.title)
        .onAppear{ rating = books.rating }
        .padding()
        Spacer()
    }
}



struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(books: Books())
            .environmentObject(BooksModel())
    }
}
