//
//  ChildViewControllerShowBookStatistics.swift
//  ParentChildDataPassing
//
//  Created by Russell Gordon on 2020-06-03.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import UIKit

class ChildViewControllersShowBookStatistics: UIViewController {
    
    // MARK: Properties
    var totalBooks: Int = 0
    var averagePageCount: Int = 0
    @IBOutlet weak var bookStatistics: UILabel!
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the label report statistics
        bookStatistics.text = "There are \(totalBooks) favourite books with an average page count of \(averagePageCount)."
        
    }
    
}
