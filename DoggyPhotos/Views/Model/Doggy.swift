//
//  Doggy.swift
//  DoggyPhotos
//
//  Created by Cooper Lawson on 2023-04-20.
//

import Foundation

struct Doggy: Codable {
    var breed: String
    var imageURL: String
    var name: String
    var age: Int
}

let exampleDoggy = Doggy(breed: "Spitz", imageURL: "https://images.dog.ceo/breeds/schnauzer-miniature/n02097047_5989.jpg", name: "Frank", age: 3)
 
