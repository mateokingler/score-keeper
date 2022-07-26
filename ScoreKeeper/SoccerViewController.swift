//
//  SoccerViewController.swift
//  ScoreKeeper
//
//  Created by Mateo Aguirre on 7/26/22.
//

import UIKit

class SoccerViewController: UIViewController {


    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    var team1Name : String = "Team 1"
    var team2Name : String = "Team 2"
    var team1Color : UIColor = .systemRed
    var team2Color : UIColor = .systemBlue
    
    @IBOutlet weak var team1ScoreLabel: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    @IBOutlet weak var team1AddGoal: UIButton!
    @IBOutlet weak var team1RemoveGoal: UIButton!
    @IBOutlet weak var team2AddGoal: UIButton!
    @IBOutlet weak var team2RemoveGoal: UIButton!
    
    var team1Score = 0
    var team2Score = 0
    let goal = 1
    
    override func viewDidLoad() {
        
        title = "Soccer ScoreKeeper"
        super.viewDidLoad()
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
        //Team 1 button design ====================================
        //add
        team1AddGoal.layer.cornerRadius = 8.0
        team1AddGoal.layer.borderWidth = 3.0
        team1AddGoal.layer.borderColor = team1Color.cgColor
        //remove
        team1RemoveGoal.layer.borderWidth = 3.0
        team1RemoveGoal.layer.cornerRadius = 8.0
        team1RemoveGoal.layer.borderColor = team1Color.cgColor
        
        //Team 2 buttons ====================================
        //add
        team2AddGoal.layer.cornerRadius = 8.0
        team2AddGoal.layer.borderWidth = 3.0
        team2AddGoal.layer.borderColor = team2Color.cgColor
        //remove
        team2RemoveGoal.layer.cornerRadius = 8.0
        team2RemoveGoal.layer.borderWidth = 3.0
        team2RemoveGoal.layer.borderColor = team2Color.cgColor
    }
    
    //LOCK PORTRAIT MODE -> Method in AppDelegate
    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    // Team 1 buttons action ====================================
    @IBAction func addGoalTeam1ButtonPressed(_ sender: UIButton) {
        team1Score += goal
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func removeGoalTeam1ButtonPressed(_ sender: UIButton) {
        if(team1Score != 0){
            team1Score -= goal
            team1ScoreLabel.text = String(team1Score)
        }
    }

    // Team 2 button actions =====================================
    
    @IBAction func addGoalTeam2ButtonPressed(_ sender: UIButton) {
        team2Score += goal
        team2ScoreLabel.text = String(team2Score)
    }
    
    @IBAction func removeGoalTeam2ButtonPressed(_ sender: UIButton) {
        if(team2Score != 0){
            team2Score -= goal
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
