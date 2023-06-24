//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Pavankumar Arepu on 17/06/23.
//

import SwiftUI
import Firebase
import FirebaseRemoteConfig

/// Responsbile to whole the LeaderListView
///
/// - returns: View

struct ContentView: View {
    var body: some View {
        LeaderListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
