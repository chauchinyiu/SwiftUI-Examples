//
//  ContainerExampleView.swift
//  SwiftUI-Examples
//
//  Created by Chinyiu Chau on 15.10.19.
//  Copyright © 2019 Chinyiu Chau. All rights reserved.
//

import SwiftUI
 
enum AppState : Int {
    case start = 0
    case main = 1
    case unknown = 2
}
 
struct ContainerExampleView : View {
    
    @State private var status : AppState = .start
    var body: some View {
        VStack {
            subView()
                .transition(.move(edge: .trailing))
                .animation(Animation.linear(duration: 2))
                .onTapGesture {
                    self.status = AppState(rawValue: Int((self.status.rawValue + 1) % 3)) ?? .unknown
                }
        }
    }

    func subView() -> some View {
        Group {
           
            if 0 == status.rawValue {
                 WelcomeView()
            }else if 1 == status.rawValue {
                MainView()
            } else if 2 == status.rawValue{
                UnknownView()
            }
 
 
        }
    }
}


struct MainView: View {
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
            Text("Hello world! I am Main View")
        }
    }
}

struct WelcomeView: View{
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("Whatsup! I am Welcome View")
        }
    }
}

struct UnknownView: View{
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.all)
            Text("yooo! I am Unknown View")
        }
    }
}

struct ContainerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerExampleView()
    }
}
