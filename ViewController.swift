//
//  ViewController.swift
//  ScoreKeeper
//
//  Created by Ernesto Gomila on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var pages:[String] = [
    "Baseball","Basketball", "Football","Soccer","Hockey","Other"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    

}
extension ViewController:UITableViewDelegate{
    
    //controls size of cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100
    }
    //change view controllers
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        //the identifier must be set in the destination VC
        let teamEditVC = storyboard?.instantiateViewController(withIdentifier: "TeamEditViewController") as! TeamEditViewController
        //let baseballVC = storyboard?.instantiateViewController(withIdentifier: "BaseballViewController") as! BaseballViewController
        
        var sportSelected = pages[indexPath.row]
        teamEditVC.sportSelected = sportSelected
//        if(pages[indexPath.row] == "Baseball"){
//            
//        }
        
        navigationController?.pushViewController(teamEditVC, animated: true)
//       // baseballVC.pages = pages[0]
//        //detailVC.char = chars[indexPath.row]
//
//        navigationController?.pushViewController(baseballVC, animated: true)
    }
    
}
extension ViewController:UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pages.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sportCell = tableView.dequeueReusableCell(withIdentifier: "sportCell", for: indexPath)
        
        sportCell.textLabel?.text = pages[indexPath.row]
        //cell.nameLabel.text = pages[indexPath.row].name
        return sportCell
    }
    
    
}


