//
//  FootballViewController.swift
//  ScoreKeeper
//

import UIKit

class FootballViewController: UIViewController {

    @IBOutlet weak var team1ScoreLabel: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    
    @IBOutlet weak var team1AddTDButton: UIButton!
    @IBOutlet weak var team1AddXPButton: UIButton!
    @IBOutlet weak var team1AddFGButton: UIButton!
    @IBOutlet weak var team1RemoveTDButton: UIButton!
    @IBOutlet weak var team1RemoveXPButton: UIButton!
    @IBOutlet weak var team1RemoveFGButton: UIButton!
    
    @IBOutlet weak var team2AddTDButton: UIButton!
    @IBOutlet weak var team2AddXPButton: UIButton!
    @IBOutlet weak var team2AddFGButton: UIButton!
    @IBOutlet weak var team2RemoveTDButton: UIButton!
    @IBOutlet weak var team2RemoveXPButton: UIButton!
    @IBOutlet weak var team2RemoveFGButton: UIButton!
    
    let touchdown = 6
    let extraPoint = 1
    let fieldGoal = 3
    
    var team1Score = 0
    var team2Score = 0
    var team1Color : UIColor = .systemRed
    var team2Color : UIColor = .systemBlue
    
    var team1Name : String = ""
    var team2Name : String = ""
    
    override func viewDidLoad() {
        
        title = "Basketball ScoreKeeper"
        
        super.viewDidLoad()
        
        team1Score = 0
        team2Score = 0
        //Labels
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
        //Team 1 Buttons Appearance =======================================
        //ADD BUTTON COLORS
        team1AddTDButton.layer.borderColor = team1Color.cgColor
        team1AddXPButton.layer.borderColor = team1Color.cgColor
        team1AddFGButton.layer.borderColor = team1Color.cgColor
        //ADD BUTTON WIDTH
        team1AddTDButton.layer.borderWidth = 2
        team1AddXPButton.layer.borderWidth = 2
        team1AddFGButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team1AddTDButton.layer.cornerRadius = 8
        team1AddXPButton.layer.cornerRadius = 8
        team1AddFGButton.layer.cornerRadius = 8
        
        //REMOVE BUTTON COLORS
        team1RemoveTDButton.layer.borderColor = team1Color.cgColor
        team1RemoveXPButton.layer.borderColor = team1Color.cgColor
        team1RemoveFGButton.layer.borderColor = team1Color.cgColor
        //REMOVE BUTTON WIDTH
        team1RemoveTDButton.layer.borderWidth = 2
        team1RemoveXPButton.layer.borderWidth = 2
        team1RemoveFGButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team1RemoveTDButton.layer.cornerRadius = 8
        team1RemoveXPButton.layer.cornerRadius = 8
        team1RemoveFGButton.layer.cornerRadius = 8
        
        
        //Team 2 Buttons Appearance =======================================
        //ADD BUTTON COLORS
        team2AddTDButton.layer.borderColor = team2Color.cgColor
        team2AddXPButton.layer.borderColor = team2Color.cgColor
        team2AddFGButton.layer.borderColor = team2Color.cgColor
        //ADD BUTTON WIDTH
        team2AddTDButton.layer.borderWidth = 2
        team2AddXPButton.layer.borderWidth = 2
        team2AddFGButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team2AddTDButton.layer.cornerRadius = 8
        team2AddXPButton.layer.cornerRadius = 8
        team2AddFGButton.layer.cornerRadius = 8
        //REMOVE BUTTON COLORS
        team2RemoveTDButton.layer.borderColor = team2Color.cgColor
        team2RemoveXPButton.layer.borderColor = team2Color.cgColor
        team2RemoveFGButton.layer.borderColor = team2Color.cgColor
        //REMOVE BUTTON WIDTH
        team2RemoveTDButton.layer.borderWidth = 2
        team2RemoveXPButton.layer.borderWidth = 2
        team2RemoveFGButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team2RemoveTDButton.layer.cornerRadius = 8
        team2RemoveXPButton.layer.cornerRadius = 8
        team2RemoveFGButton.layer.cornerRadius = 8
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func team1AddTDPressed(_ sender: UIButton) {
        team1Score += touchdown
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func team1AddXPPressed(_ sender: UIButton) {
        team1Score += extraPoint
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func team1AddFGPressed(_ sender: UIButton) {
        team1Score += fieldGoal
        team1ScoreLabel.text = String(team1Score)
    }
    
    @IBAction func team2AddTDPressed(_ sender: UIButton) {
        team2Score += touchdown
        team2ScoreLabel.text = String(team2Score)
    }
    
    @IBAction func team2AddXPPressed(_ sender: UIButton) {
        team2Score += extraPoint
        team2ScoreLabel.text = String(team2Score)
    }
    
    @IBAction func team2AddFGPressed(_ sender: UIButton) {
        team2Score += fieldGoal
        team2ScoreLabel.text = String(team2Score)
    }
    
    
    @IBAction func team1RemoveTDPressed(_ sender: UIButton) {
        if(team1Score >= touchdown){
            team1Score -= touchdown
            team1ScoreLabel.text = String(team1Score)
        }
    }
    
    @IBAction func team1RemoveXPPressed(_ sender: UIButton) {
        if(team1Score >= extraPoint){
            team1Score -= extraPoint
            team1ScoreLabel.text = String(team1Score)
        }
    }
    
    @IBAction func team1RemoveFGPressed(_ sender: UIButton) {
        if(team1Score >= fieldGoal){
            team1Score -= fieldGoal
            team1ScoreLabel.text = String(team1Score)
        }
    }
    
    @IBAction func team2RemoveTDPressed(_ sender: UIButton) {
        if(team2Score >= touchdown){
            team2Score -= touchdown
            team2ScoreLabel.text = String(team2Score)
        }
    }
    
    @IBAction func team2RemovedXPPressed(_ sender: UIButton) {
        if(team2Score >= extraPoint){
            team2Score -= extraPoint
            team2ScoreLabel.text = String(team2Score)
        }
    }
    
    @IBAction func team2RemoveFGPressed(_ sender: UIButton) {
        if(team2Score >= fieldGoal){
            team2Score -= fieldGoal
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
