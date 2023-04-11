//
//  FavoriteModel.swift
//  SwiftUIFavoriteBook
//
//  Created by Mehdican Büyükplevne on 11.04.2023.
//

import Foundation

struct FavoriteModel: Identifiable {
    var id = UUID()
    var title: String
    var elements: [FavoriteElements]
}

struct FavoriteElements: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}
 // BANDS
let avenged = FavoriteElements(name: "Avenged Sevenfold", imageName: "ax7", description: "No 1 Music Band")
let metallica = FavoriteElements(name: "Metallica", imageName: "met", description: "No 2 Music Band")
let placebo = FavoriteElements(name: "Placebo", imageName: "pl", description: "No 3 Music Band")
let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,avenged,placebo])

// MOVIES
let inter = FavoriteElements(name: "Interstellar", imageName: "int", description: "No 1 Movie")
let bast = FavoriteElements(name: "Inglourious Basterds", imageName: "bast", description: "No 2 Movie")
let batman = FavoriteElements(name: "The Dark Knight Rises", imageName: "dark", description: "No 3 Movie")
let favoriteMovie = FavoriteModel(title: "Favorite Movies", elements: [inter,bast,batman])

let myFavorites = [favoriteBands, favoriteMovie]
