//
//  ContentView.swift
//  ExpenseUI
//
//  Created by Adam Gerber on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home().preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
