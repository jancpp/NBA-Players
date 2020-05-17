//
//  PlayerDetail.swift
//  NBA Players
//
//  Created by Jan Polzer on 5/13/20.
//  Copyright © 2020 Apps KC. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image(player.imageName).clipShape(Circle())
                .background(Circle()
                .foregroundColor(.white))
                .overlay(Circle()
                .stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -70)
                .shadow(radius: 15)
            
            Text(player.name).font(.system(size: 50)).fontWeight(.heavy)
            
            StatText(statName: "Age",    statValue: "\(player.age)")
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[3])
    }
}
