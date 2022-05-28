//
//  Books.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/24/22.
//

import Foundation
//In this model I am declaring the data as variables to be taken out of the JSON Data.
struct Books : Decodable, Identifiable {
    
    var id = 1
    var title = "Title"
    var author = "Author"
    var content = ["I am a test book."]
    var isFavourite = false
    var rating = 2
    var currentPage = 0
    
}

//Each variable name is linked to the JSON data
