//
//  ColorsTableTableViewController.swift
//  Rainbow
//
//  Created by Austin Potts on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ColorsTableTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)
                             ]
    
    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name

        return cell
    }
    

   
     //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //Segue Identifier for deatil view controller ShowColorSegue
        
        if segue.identifier == "ShowColorSegue" {
            
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let colorDetailVC = segue.destination as? ColorDetailViewController else {return}
            
            let selectedColor = colors[indexPath.row]
            colorDetailVC.cellColor = selectedColor
        }
    }
 

}

