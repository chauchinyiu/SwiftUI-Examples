//
//  SimpleListView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//
import SwiftUI
import Combine

struct SimpleListView: View {
    @ObservedObject var viewModel = SimpleListViewModel()
     
        var body: some View {

            NavigationView {
                VStack {
                    TextField("Searching : ", text:$viewModel.query
                    
                    )
                        .frame( height: 60).padding(.leading)
                    List(viewModel.repositories){ repo in
                          Text(repo.full_name)
                    }
                }
                .navigationBarTitle(Text("Github Search"))
            }
        }
    }

struct SimpleListView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListView()
    }
}
