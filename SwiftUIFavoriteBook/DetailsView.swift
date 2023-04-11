//
//  DetailsView.swift
//  SwiftUIFavoriteBook
//
//  Created by Mehdican Büyükplevne on 11.04.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenFavoriteElements: FavoriteElements
    var body: some View {
        VStack {
            Image(choosenFavoriteElements.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(choosenFavoriteElements.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavoriteElements.description)
                .font(.subheadline)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavoriteElements: bast)
    }
}
