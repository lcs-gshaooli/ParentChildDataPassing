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
    
    // When a segue is about to happen, this function will be called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // What is the destination of this segue?
        if let childController = segue.destination as? ChildViewControllerAddNewBook {

            // Register this controller, the parent, as something that can save books
            childController.delegate = self
            
        }
        if let childController = segue.destination as? ChildViewControllersShowBookStatistics {

            // Calculate statistics about all books
            var totalPagesAcrossAllBooks = 0
            for book in favouriteBooks {
                totalPagesAcrossAllBooks += book.pageCount
            }
            let averagePageCount = totalPagesAcrossAllBooks / favouriteBooks.count

            // Pass information about book statistics forward to the child view
            childController.averagePageCount = averagePageCount
            childController.totalBooks = favouriteBooks.count
            
        }

        
    }
    
    // By defining this function, the ParentViewController class now conforms to the BookSaver protocol
    func save(new: Book) {
        
        // Add the provided book to the array of favourite books
        favouriteBooks.append(new)
        
        // DEBUG: Report how many books there are now in the array of favourite books
        print("There are now \(favouriteBooks.count) favourite books defined.")
    }

}

