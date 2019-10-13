//
//  EnvironmentObjectExampleView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import SwiftUI

struct EnvironmentObjectExampleView: View {
    @EnvironmentObject var settings: UserSettings
 
     var body: some View {
        
             VStack {
                 // A button that writes to the environment settings
                 Button(action: {
                     self.settings.score += 1
                 }) {
                     Text("Increase Score")
                 }
                Spacer().frame(height: 50.0)
                 NavigationLink(destination: ExampleDetailView()) {
                     Text("Show Detail View")
                 }
             }
         
     }
}

struct ExampleDetailView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        // A text view that reads from the environment settings
        Text("Score: \(settings.score)")
    }
}

struct EnvironmentObjectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectExampleView()
    }
}
