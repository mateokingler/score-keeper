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
        
        title = "Sport Select"
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    
    //LOCK PORTRAIT MODE -> Method in AppDelegate
    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
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

        
        var sportSelected = pages[indexPath.row]
        teamEditVC.sportSelected = sportSelected

        navigationController?.pushViewController(teamEditVC, animated: true)
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


