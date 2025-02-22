//
//  PlayerList.swift
//  NBA Players
//
//  Created by Jan Polzer on 5/16/20.
//  Copyright © 2020 Apps KC. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer).frame(height: 60)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
