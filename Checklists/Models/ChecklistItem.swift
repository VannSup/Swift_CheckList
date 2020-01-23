//
//  ChecklistItem.swift
//  Checklists
//
//  Created by lpiem on 23/01/2020.
//  Copyright © 2020 lpiem. All rights reserved.
//

import Foundation

class ChecklistItem{
    
    private var text:String
    private var checked: Bool
    
    init(text:String){
        self.text = text
        self.checked = false
    }
    
    init(text:String, checked:Bool) {
        self.text = text
        self.checked = checked
    }
    
    func toggleChecked(){
        (self.checked) ? (self.checked = false) : (self.checked = true)
    }
}
