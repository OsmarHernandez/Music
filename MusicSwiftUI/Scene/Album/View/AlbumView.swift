//
//  AlbumView.swift
//  Music
//
//  Created by Hernandez, Osmar Alan (external - Project) on 18/05/21.
//

import SwiftUI

struct AlbumView: View {
    let album: Album
    
    var body: some View {
        HStack {
            Description(title: album.title, year: album.year)
            
            Spacer()
            
            Button { print("Play") }
                label: {
                    Image.init(systemName: "play.fill")
                        .font(.system(size: 25))
                        .frame(width: 60, height: 60)
                        .background(Color.customGreen)
                        .cornerRadius(30)
                }
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.black)
    }
}

private struct Buttons: View {
    var body: some View {
        HStack(spacing: 20) {
            Button { print("Favorite") }
                label: {
                    Image.init(systemName: "heart.fill")
                        .font(.system(size: 24))
                        .foregroundColor(Color.customGreen)
                }
            
            Button { print("Download") }
                label: {
                    Image.init(systemName: "arrow.down")
                        .font(.system(size: 12))
                        .frame(width: 24, height: 24)
                        .background(Color.customGreen)
                        .cornerRadius(12)
                }
                .foregroundColor(.black)
            
            Button { print("More Actions") }
                label: {
                    Image.init(systemName: "ellipsis")
                        .font(.system(size: 24))
                }
                .foregroundColor(.gray)
        }
        .background(Color.black)
    }
}

private struct Description: View {
    let title: String
    let year: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 8) {
                Image.init(systemName: "circle.fill")
                    .foregroundColor(.white)
                
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
            }
            
            Text("Album・\(year)")
                .foregroundColor(.gray)
            
            Buttons()
        }
        .background(Color.black)
    }
}

struct AlbumHeader_Previews: PreviewProvider {
    static var previews: some View {
        let album = Album.highSchoolMusical
        
        Buttons().previewLayout(.sizeThatFits)
        
        Description(title: album.title, year: album.year).previewLayout(.sizeThatFits)
        
        AlbumView(album: album).previewLayout(.sizeThatFits)
    }
}
