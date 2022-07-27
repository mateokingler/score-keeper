//
//  OtherViewController.swift
//  ScoreKeeper
//
//  Created by Michael Panopio-Mones on 7/24/22.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var team1ScoreLabel: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    @IBOutlet weak var addScoreTeam1: UIButton!
    @IBOutlet weak var addScoreTeam2: UIButton!
    @IBOutlet weak var removeScoreTeam1: UIButton!
    @IBOutlet weak var removeScoreTeam2: UIButton!
    
    var team1Color : UIColor = .systemRed
    var team2Color : UIColor = .systemBlue
    
    var team1Name : String = "Team 1"
    var team2Name : String = "Team 2"
    
    
    var team1Score = 0
    var team2Score = 0
    
    let score = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Other ScoreKeeper"
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
        addScoreTeam1.layer.cornerRadius = 8.0
        addScoreTeam1.layer.borderWidth = 3.0
        addScoreTeam1.layer.borderColor = team1Color.cgColor
        
        addScoreTeam2.layer.cornerRadius = 8.0
        addScoreTeam2.layer.borderWidth = 3.0
        addScoreTeam2.layer.borderColor = team2Color.cgColor
        
        removeScoreTeam1.layer.cornerRadius = 8.0
        removeScoreTeam1.layer.borderWidth = 3.0
        removeScoreTeam1.layer.borderColor = team1Color.cgColor
        
        removeScoreTeam2.layer.cornerRadius = 8.0
        removeScoreTeam2.layer.borderWidth = 3.0
        removeScoreTeam2.layer.borderColor = team2Color.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addScoreTeam1Pressed(_ sender: UIButton) {
        team1Score += score
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func removeScoreTeam1Pressed(_ sender: UIButton) {
        if(team1Score != 0){
            team1Score -= score
            team1ScoreLabel.text = String(team1Score)
        }
    }
    
    @IBAction func addScoreTeam2Pressed(_ sender: UIButton) {
        team2Score += score
        team2ScoreLabel.text = String(team2Score)
        
    }
    
    @IBAction func removeScoreTeam2Pressed(_ sender: UIButton) {
        if(team2Score != 0){
            team2Score -= score
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
