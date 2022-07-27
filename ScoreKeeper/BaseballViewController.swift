//
//  BaseballViewController.swift
//  ScoreKeeper
//
//  Created by Michael Panopio-Mones on 7/24/22.
//

import UIKit

class BaseballViewController: UIViewController {

    @IBOutlet weak var team1ScoreLabel: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    @IBOutlet weak var addRunTeam1: UIButton!
    @IBOutlet weak var addRunTeam2: UIButton!
    @IBOutlet weak var removeRunTeam1: UIButton!
    @IBOutlet weak var removeRunTeam2: UIButton!
    
    var team1Color : UIColor = .systemRed
    var team2Color : UIColor = .systemBlue
    
    var team1Name : String = "Team 1"
    var team2Name : String = "Team 2"
    
    
    var team1Score = 0
    var team2Score = 0
    
    let homerun = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Baseball ScoreKeeper"
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
        addRunTeam1.layer.cornerRadius = 8.0
        addRunTeam1.layer.borderWidth = 3.0
        addRunTeam1.layer.borderColor = team1Color.cgColor
        
        addRunTeam2.layer.cornerRadius = 8.0
        addRunTeam2.layer.borderWidth = 3.0
        addRunTeam2.layer.borderColor = team2Color.cgColor
        
        removeRunTeam1.layer.cornerRadius = 8.0
        removeRunTeam1.layer.borderWidth = 3.0
        removeRunTeam1.layer.borderColor = team1Color.cgColor
        
        removeRunTeam2.layer.cornerRadius = 8.0
        removeRunTeam2.layer.borderWidth = 3.0
        removeRunTeam2.layer.borderColor = team2Color.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addRunTeam1Pressed(_ sender: UIButton) {
        team1Score += homerun
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func addRunTeam2Pressed(_ sender: UIButton) {
        team2Score += homerun
        team2ScoreLabel.text = String(team2Score)
    }
    
    @IBAction func removeRunTeam1Pressed(_ sender: UIButton) {
        if(team1Score != 0){
            team1Score -= homerun
            team1ScoreLabel.text = String(team1Score)
        }
    }
    
    @IBAction func removeRunTeam2Pressed(_ sender: UIButton) {
        if(team2Score != 0){
            team2Score -= homerun
            team2ScoreLabel.text = String(team2Score)
        }
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
