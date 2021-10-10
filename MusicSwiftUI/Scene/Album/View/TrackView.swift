//
//  TrackView.swift
//  Music
//
//  Created by Hernandez, Osmar Alan (external - Project) on 18/05/21.
//

import SwiftUI

struct TrackView: View {
    let track: Track
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(track.title)
                    .font(.system(size: 16, weight: .medium))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .lineLimit(1)
                
                HStack {
                    Image.init(systemName: "arrow.down")
                        .font(.system(size: 7))
                        .frame(width: 14, height: 14)
                        .background(Color.customGreen)
                        .cornerRadius(7)
                    
                    Text(track.artist)
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                }
            }
            
            Spacer()
            
            Button { print("More Actions: \(track.title)") }
                label: {
                    Image.init(systemName: "ellipsis")
                        .font(.system(size: 24))
                }
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.black)
    }
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        let album = Album.highSchoolMusical
        let track = album.tracks[1]
        
        TrackView(track: track).previewLayout(.sizeThatFits)
    }
}
