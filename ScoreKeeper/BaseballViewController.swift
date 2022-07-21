//
//  BaseballViewController.swift
//  ScoreKeeper
//
//  Created by Ernesto Gomila on 7/11/22.
//

import UIKit

class BaseballViewController: UIViewController {

    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    var team1Name : String = ""
    override func viewDidLoad() {
        team1Label.text = team1Name
        print("Name is \(team1Name)")
        super.viewDidLoad()
        //team1Label.text = team1Name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
