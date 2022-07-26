//
//  BasketballViewController.swift
//  ScoreKeeper
//
//  Created by Ernesto Gomila on 7/13/22.
//

import UIKit

class BasketballViewController: UIViewController {

    //DECLARATIONS ===============================================
    
    @IBOutlet weak var team2Label: UILabel!
    @IBOutlet weak var team1Label: UILabel!
    @IBOutlet weak var team2ScoreLabel: UILabel!
    @IBOutlet weak var team1ScoreLabel: UILabel!
   
    //Team 1 add Buttons
    @IBOutlet weak var team1Add2PTButton: UIButton!
    @IBOutlet weak var team1Add3PTButton: UIButton!
    @IBOutlet weak var team1AddFreeThrowButton: UIButton!
    //Team 1 remove Buttons
    @IBOutlet weak var team1Remove2PTButton: UIButton!
    @IBOutlet weak var team1Remove3PTButton: UIButton!
    @IBOutlet weak var team1RemoveFreeThrowButton: UIButton!
    
    //team 2 add buttons
    
    @IBOutlet weak var team2Add2PTButton: UIButton!
    @IBOutlet weak var team2Add3PTButton: UIButton!
    @IBOutlet weak var team2AddFreeThrowButton: UIButton!
    //team2 Remove buttons
    @IBOutlet weak var team2Remove2PTButton: UIButton!
    @IBOutlet weak var team2Remove3PTButton: UIButton!
    @IBOutlet weak var team2RemoveFreeThrowButton: UIButton!
    
    //const
    let threePointer = 3
    let twoPointer = 2
    let freeThrow = 1
    
    //vars
    var team1Score = 0
    var team2Score = 0
    var team1Color : UIColor = .systemRed
    var team2Color : UIColor = .systemBlue
    
    var team1Name : String = ""
    var team2Name : String = ""
    override func viewDidLoad() {
        title = "Basketball ScoreKeeper"
        team1Score = 0
        team2Score = 0
        //Labels
        team1Label.text = team1Name
        team2Label.text = team2Name
        team1ScoreLabel.text = String(team1Score)
        team2ScoreLabel.text = String(team2Score)
        
        //Team 1 Buttons Appearance =======================================
        //ADD BUTTON COLORS
        team1Add2PTButton.layer.borderColor = team1Color.cgColor
        team1Add3PTButton.layer.borderColor = team1Color.cgColor
        team1AddFreeThrowButton.layer.borderColor = team1Color.cgColor
        //ADD BUTTON WIDTH
        team1Add2PTButton.layer.borderWidth = 2
        team1Add3PTButton.layer.borderWidth = 2
        team1AddFreeThrowButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team1Add3PTButton.layer.cornerRadius = 8
        team1Add2PTButton.layer.cornerRadius = 8
        team1AddFreeThrowButton.layer.cornerRadius = 8
        
        //REMOVE BUTTON COLORS
        team1Remove2PTButton.layer.borderColor = team1Color.cgColor
        team1Remove3PTButton.layer.borderColor = team1Color.cgColor
        team1RemoveFreeThrowButton.layer.borderColor = team1Color.cgColor
        //REMOVE BUTTON WIDTH
        team1Remove2PTButton.layer.borderWidth = 2
        team1Remove3PTButton.layer.borderWidth = 2
        team1RemoveFreeThrowButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team1Remove2PTButton.layer.cornerRadius = 8
        team1Remove3PTButton.layer.cornerRadius = 8
        team1RemoveFreeThrowButton.layer.cornerRadius = 8
        
        
        //Team 2 Buttons Appearance =======================================
        //ADD BUTTON COLORS
        team2Add2PTButton.layer.borderColor = team2Color.cgColor
        team2Add3PTButton.layer.borderColor = team2Color.cgColor
        team2AddFreeThrowButton.layer.borderColor = team2Color.cgColor
        //ADD BUTTON WIDTH
        team2Add2PTButton.layer.borderWidth = 2
        team2Add3PTButton.layer.borderWidth = 2
        team2AddFreeThrowButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team2Add3PTButton.layer.cornerRadius = 8
        team2Add2PTButton.layer.cornerRadius = 8
        team2AddFreeThrowButton.layer.cornerRadius = 8
        //REMOVE BUTTON COLORS
        team2Remove2PTButton.layer.borderColor = team2Color.cgColor
        team2Remove3PTButton.layer.borderColor = team2Color.cgColor
        team2RemoveFreeThrowButton.layer.borderColor = team2Color.cgColor
        //REMOVE BUTTON WIDTH
        team2Remove2PTButton.layer.borderWidth = 2
        team2Remove3PTButton.layer.borderWidth = 2
        team2RemoveFreeThrowButton.layer.borderWidth = 2
        //ADD BUTTON ROUNDED CORDERS
        team2Remove2PTButton.layer.cornerRadius = 8
        team2Remove3PTButton.layer.cornerRadius = 8
        team2RemoveFreeThrowButton.layer.cornerRadius = 8
       
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
