//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Gordon, Russell on 2019-11-13.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    // MARK: Properties
    var emojiToDisplay: Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the navigation item title
        self.navigationItem.title = emojiToDisplay!.name

        // Now set up the view to display information about the selected emoji
        print("Name is: \(emojiToDisplay!.name)")
        print("Symbol is: \(emojiToDisplay!.symbol)")
        print("Description is: \(emojiToDisplay!.description)")
        print("Usage is: \(emojiToDisplay!.usage)")

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
