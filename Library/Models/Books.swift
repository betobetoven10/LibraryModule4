//
//  Books.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/24/22.
//

import Foundation
//In this model I am declaring the data as variables to be taken out of the JSON Data.
class Books: Identifiable, Decodable{
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
}

//Each variable name is linked to the JSON data
