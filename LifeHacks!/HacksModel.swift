//
//  TipsModel.swift
//  FashionTips
//
//  Created by Natalie Lim on 7/6/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import GameKit

struct HacksModel {
    let hacks = [
        "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"
    ]
    
    func getRandomHack() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(hacks.count)
        
        return hacks[randomNumber] as! String
        
    }
}

