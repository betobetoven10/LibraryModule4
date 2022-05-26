//
//  BooksModel.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/26/22.
//

import Foundation

class BooksModel: ObservableObject{
    @Published var book = [Books]()
    init (){
        self.book = DataService.getLocalData()
    }
}

//This View Model fetch the data by calling the function getLocalData from the DataService class. It is initialized by the init the method, which runs the code as soon as the class is called. 
