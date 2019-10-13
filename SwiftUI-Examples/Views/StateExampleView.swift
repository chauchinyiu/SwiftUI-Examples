//
//  StateExampleView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 14.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import SwiftUI

struct StateExampleView: View {
    @State var number: Int = 0
    let text : String = "Hello World!!"
    var body: some View {
        VStack{
            
            Text("\(text) :: \(number)")
            Spacer().frame(height: 50.0)
            Button(action: {
                self.updateText()
            }
            ) {
                Text("Button")
            }
        }
    }
    
     func updateText(){
        number += 1
    }
}

struct StateExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StateExampleView()
    }
}
