//
//  BindingExampleView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import SwiftUI

struct BindingExampleView: View {
    let products: [Product] = [
        Product(id:1, title: "ASD", isFavorited: false),
        Product(id:2,title: "QWR", isFavorited: true),
        Product(id:3,title: "VVV", isFavorited: false),
        Product(id:4,title: "FAD", isFavorited: true),
        Product(id:5,title: "GGG", isFavorited: false)
    ]

       @State private var showFavorited: Bool = false

       var body: some View {
           List {
               FilterView(showFavorited: $showFavorited)

               ForEach(products) { product in
                   if !self.showFavorited || product.isFavorited {
                       Text(product.title)
                   }
               }
           }
       }
}


struct FilterView: View {
    @Binding var showFavorited: Bool

    var body: some View {
        Toggle(isOn: $showFavorited) {
            Text("Show Favorites")
        }
    }
}

 

struct BindingExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BindingExampleView()
    }
}
