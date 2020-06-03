//
//  BookSaver.swift
//  ParentChildDataPassing
//
//  Created by Russell Gordon on 2020-06-03.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

// Types that adopt this protocol "promise" to implement the listed methods
protocol BookSaver {
    
    func save(new: Book)
    
}
