//
//  BooksModel.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/26/22.
//

import Foundation

class BooksModel: ObservableObject {
    @Published var book = [Books]()
    
    init (){
        self.book = DataService.getLocalData()
    }
    
    func ChangeRating(ID: Int, rating: Int) {
        if let index = book.firstIndex(where: { $0.id == ID }) {
            book[index].rating = rating
        }
    }
    
    func SaveForLater(ID: Int){
        if let index = book.firstIndex(where: { $0.id == ID }) {
            book[index].isFavourite.toggle()
        }
    }
}



//This View Model fetch the data by calling the function getLocalData from the DataService class. It is initialized by the init the method, which runs the code as soon as the class is called. 
