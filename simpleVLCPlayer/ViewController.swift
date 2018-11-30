//
//  ViewController.swift
//  simpleVLCPlayer
//
//  Created by Michael on 11/30/18.
//  Copyright © 2018 Michael Tai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerView: UIView!
    
    let vlcplayer = VLCMediaPlayer()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        vlcplayer.drawable = playerView
        
        guard let file = Bundle.main.url(forResource: "1", withExtension: "mp4") else {
            return
        }
        let media = VLCMedia(url: file)
        
        vlcplayer.media = media
        vlcplayer.play()
        
    }


}

