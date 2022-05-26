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
                        let beto = String(r.id)
                        NavigationLink(destination: BookDetail(),
                                       label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                VStack{
                                    HStack{
                                        VStack{
                                            Text(r.title)
                                            Text(r.author)
                                        }
                                        Spacer()
                                        Image(systemName: "star.fill")
                                    }
                                    Image("cover" + beto)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: .fit)
                                }
                            }
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
