//
//  ViewController.swift
//  Checklists
//
//  Created by lpiem on 23/01/2020.
//  Copyright © 2020 lpiem. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var checklistsItem: [ChecklistItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checklistsItem.append(ChecklistItem(text:"Thomate",checked:false))
        checklistsItem.append(ChecklistItem(text:"Thomate",checked:false))
        checklistsItem.append(ChecklistItem(text:"Thomate",checked:false))
        checklistsItem.append(ChecklistItem(text:"Thomate",checked:false))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return checklistsItem.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        cell.textLabel?.text = "Pomme"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(for cell: UITableViewCell, withItem item: ChecklistItem){
        cell.accessoryType = (item.checked) ? .checkmark : .none
    }
    
    func configureText(for cell: UITableViewCell, withItem item: ChecklistItem){
        cell.textLabel?.text = item.text
    }
    
}
