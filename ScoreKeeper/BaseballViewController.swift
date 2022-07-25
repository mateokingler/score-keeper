//
//  BaseballViewController.swift
//  ScoreKeeper
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
    
    var team1Name : String = "Marlins"
    var team2Name : String = "Angels"
    
    var team1Score = 0
    var team2Score = 0
    
    var homerun = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
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
