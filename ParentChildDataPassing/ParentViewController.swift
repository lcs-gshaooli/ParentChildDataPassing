//
//  ParentViewController.swift
//  ParentChildDataPassing
//
//  Created by Russell Gordon on 2020-06-03.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import UIKit

// By adopting the BookSaver protocol, the ParentViewController class "promises" to implement methods listed in the protocol
class ParentViewController: UIViewController, BookSaver {
    
    // MARK: Properties
    
    // An empty array (this represents the list of favourite books)
    var favouriteBooks: [Book] = []
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // By defining this function, the ParentViewController class now conforms to the BookSaver protocol
    func save(new: Book) {
        
        // Add the provided book to the array of favourite books
        favouriteBooks.append(new)
    }

}

