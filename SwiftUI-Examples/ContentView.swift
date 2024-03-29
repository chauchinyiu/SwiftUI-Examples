//
//  ContentView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        NavigationView {
           
                List() {

                    NavigationLink(destination: StateExampleView()) {
                            Text("State Example")
                        }
                
                    NavigationLink(destination: EnvironmentObjectExampleView()) {
                                    Text("EnvironmentObject Example")
                                }
                    
                    
                    NavigationLink(destination: BindingExampleView()) {
                                    Text("Binding Example")
                                }
                    NavigationLink(destination: SimpleListView()) {
                                    Text("Simple List View")
                                }
                    NavigationLink(destination: ContainerExampleView()) {
                                                    Text("Container Example View")
                                                }
            
                }.navigationBarTitle(Text("Examples"))
            
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
