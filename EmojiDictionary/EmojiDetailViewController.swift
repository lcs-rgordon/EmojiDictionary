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
    // The emoji to display detail about
    var emojiToDisplay: Emoji?
    
    // Outlets to connect this controller to the view
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var usageLabel: UILabel!
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get a reference to the emoji set in the table view prior to segue
        guard let emojiSetFromTableView = emojiToDisplay else {
            return
        }
        
        // Set the navigation title item
        self.navigationItem.title = emojiSetFromTableView.name
        
        // Display detail information in the view
        symbolLabel.text = emojiSetFromTableView.symbol
        descriptionLabel.text = emojiSetFromTableView.description
        usageLabel.text = emojiSetFromTableView.usage

        // Now set up the view to display information about the selected emoji
        print("Name is: \(emojiSetFromTableView.name)")
        print("Symbol is: \(emojiSetFromTableView.symbol)")
        print("Description is: \(emojiSetFromTableView.description)")
        print("Usage is: \(emojiSetFromTableView.usage)")

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
