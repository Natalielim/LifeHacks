//
//  TodayViewController.swift
//  DailyFashionTips
//
//  Created by Natalie Lim on 7/7/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import UIKit
import NotificationCenter
import GameKit

class TodayViewController: UIViewController, NCWidgetProviding {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hackLabel.text = hacksModel.getRandomHack()
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        
        completionHandler(NCUpdateResult.NewData)
    }
    
    func widgetMarginInsetsForProposedMarginInsets
        (defaultMarginInsets: UIEdgeInsets) -> (UIEdgeInsets) {
        return UIEdgeInsetsZero
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var hackLabel: UILabel!
    
    @IBAction func showHack(sender: UIButton) {
        hackLabel.text = hacksModel.getRandomHack()
        
    }
    
    let hacksModel = HacksModel()
    
    @IBOutlet weak var hackButton: UIButton!
 
}
