//
//  VideoPlayer.swift
//  WWDC
//
//  Created by Richard Ekle on 9/29/15.
//  Copyright © 2015 Ekle Software, Inc. All rights reserved.
//

import Foundation
import AVFoundation
import AVKit

class VideoPlayer: AVPlayerViewController
{
    var url: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.showsPlaybackControls = true
        
        if let url = self.url
        {
            self.player = AVPlayer(URL: NSURL(string: url)!)
            self.player?.play()
        }
    }
}
