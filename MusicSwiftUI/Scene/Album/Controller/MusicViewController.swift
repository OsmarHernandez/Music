//
//  MusicViewController.swift
//  Music
//
//  Created by Hernandez, Osmar Alan (external - Project) on 18/05/21.
//

import UIKit

class MusicViewController: UIViewController {
    
    typealias TrackTableViewCell = SwitUITableViewCell<TrackView>
    typealias AlbumTableViewCell = SwitUITableViewCell<AlbumView>

    var album = Album.highSchoolMusical
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = album.title
        tableView.register(TrackTableViewCell.self, forCellReuseIdentifier: TrackTableViewCell.reuseIdentifier)
        tableView.register(AlbumTableViewCell.self, forCellReuseIdentifier: AlbumTableViewCell.reuseIdentifier)
    }
}

extension MusicViewController {
    private func albumCellForRow(at indexPath: IndexPath) -> AlbumTableViewCell {
        let albumCell = tableView.dequeueReusableCell(withIdentifier: AlbumTableViewCell.reuseIdentifier, for: indexPath) as! AlbumTableViewCell
        
        let albumView = AlbumView(album: album)
        albumCell.set(rootView: albumView)
        
        return albumCell
    }
    
    private func trackCellForRow(at indexPath: IndexPath) -> TrackTableViewCell {
        let trackCell = tableView.dequeueReusableCell(withIdentifier: TrackTableViewCell.reuseIdentifier, for: indexPath) as! TrackTableViewCell
        
        let track = album.tracks[indexPath.row]
        let trackView = TrackView(track: track)
        trackCell.set(rootView: trackView)
        
        return trackCell
    }
}

extension MusicViewController: UITableViewDelegate {}

extension MusicViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : album.tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return albumCellForRow(at: indexPath)
        } else {
            return trackCellForRow(at: indexPath)
        }
    }
}
