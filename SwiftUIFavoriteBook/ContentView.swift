//
//  ContentView.swift
//  SwiftUIFavoriteBook
//
//  Created by Mehdican Büyükplevne on 11.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(choosenFavoriteElements: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle("Favorite Book")
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
