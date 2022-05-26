//
//  DataService.swift
//  Library
//
//  Created by Alberto Madueño Navarrete on 5/26/22.
//

import Foundation
class DataService {
    static func getLocalData() -> [Books]{
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        guard pathString != nil else {
            return [Books]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let bookData = try decoder.decode([Books].self, from: data)
                return bookData
            }
            catch{
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Books]()
    }
}
