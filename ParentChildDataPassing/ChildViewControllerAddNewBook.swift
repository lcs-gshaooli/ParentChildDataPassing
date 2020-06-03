//
//  ChildViewControllerAddNewBook.swift
//  ParentChildDataPassing
//
//  Created by Russell Gordon on 2020-06-03.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import UIKit

class ChildViewControllerAddNewBook: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var bookTitle: UITextField!
    @IBOutlet weak var bookAuthor: UITextField!
    @IBOutlet weak var bookPageCount: UITextField!
    
    // This is a "hook" where the parent view controller can "register" as something that is able to save book information, because it has adopted the BookSaver protocol
    var delegate: BookSaver?
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveNewFavouriteBook(_ sender: Any) {
        
        // Assuming that data is entered correctly is not a good idea (guard statements should be used) but assumptions will be made here to simplify the tutorial / example
        let someBook = Book(title: bookTitle.text!,
                            author: bookAuthor.text!,
                            pageCount: Int(bookPageCount.text!)!)
        
        // So long as a delegate has been defined (that's what the ? is for)...
        // ... the new book via the delegate (this is the parent view controller)
        delegate?.save(new: someBook)
        
        // Go back to the parent view controller
        self.navigationController?.popViewController(animated: true)

        
    }
    
}

