//
//  ContentView.swift
//  TheLightUI
//
//  Created by DIRECTOR on 31.10.2021.
//

import SwiftUI


struct ContentView: View {

    @State var isLighton = false
    
    var body: some View {
        ZStack {
            isLighton ? Color.white : Color.black
        }
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            isLighton.toggle()
        }
        .statusBar(hidden: true)
        .onAppear {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation") // Forcing the rotation to portrait
            AppDelegate.orientationLock = .portrait // And making sure it stays that way
        }.onDisappear {
            AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
