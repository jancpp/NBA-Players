//
//  PlayerRow.swift
//  NBA Players
//
//  Created by Jan Polzer on 5/16/20.
//  Copyright © 2020 Apps KC. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    var body: some View {
        HStack() {
            Image(player.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.self.color))
            Text(player.name).font(.largeTitle).lineLimit(1).minimumScaleFactor(0.5)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[4]).previewLayout(.fixed(width: 500, height: 100))
    }
}
