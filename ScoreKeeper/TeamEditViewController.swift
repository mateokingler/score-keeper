//
//  TeamEditViewController.swift
//  ScoreKeeper
//
//  Created by Ernesto Gomila on 7/13/22.
//

import UIKit

//Extension method to dismiss keyboard when clikcing away


class TeamEditViewController: UIViewController, UIColorPickerViewControllerDelegate {

    @IBOutlet weak var team1Label: UILabel!
    
    @IBOutlet weak var team1NameLabel: UILabel!
    @IBOutlet weak var team1Input: UITextField!
    @IBOutlet weak var team1ColorLabel: UILabel!
    @IBOutlet weak var team2Label: UILabel!
    @IBOutlet weak var team2NameLabel: UILabel!
    @IBOutlet weak var team2Input: UITextField!
    @IBOutlet weak var team2ColorLabel: UILabel!
    
    
    @IBOutlet weak var teamColorButton: UIButton!
    
    @IBOutlet weak var team1ColorWell: UIColorWell!
    @IBOutlet weak var team2ColorWell: UIColorWell!

    var sportSelected : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(sportSelected) Team Customization"
        team1Label.text = "Team 1"
        team2Label.text = "Team 2"
        team1NameLabel.text = "Team Name"
        team2NameLabel.text = "Team Name"
        team1ColorLabel.text = "Team Color"
        team2ColorLabel.text = "Team Color"

        
        team1ColorWell.backgroundColor = .systemRed
        team2ColorWell.backgroundColor = .systemBlue
        
        team1ColorWell.layer.cornerRadius = 8.0
        team2ColorWell.layer.cornerRadius = 8.0
        team1ColorWell.layer.borderWidth = 2
        team2ColorWell.layer.borderWidth = 2
       
        team1ColorWell.title = "Select Color"
        
        team1Label.sizeToFit()
        team2Label.sizeToFit()
        team1NameLabel.sizeToFit()
        team2NameLabel.sizeToFit()
        team1ColorLabel.sizeToFit()
        team2ColorLabel.sizeToFit()
       
        team1ColorWell.addTarget(self, action: #selector(colorWellChanged(_:)), for: .valueChanged)
        team2ColorWell.addTarget(self, action: #selector(colorWellChanged(_:)), for: .valueChanged)
        
        // Do any additional setup after loading the view.
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        
        //PART METHOD TO DISMISS KEYBOARD WHEN CLICKING ANYWHERE
        view.addGestureRecognizer(tap)
        
        
    }
    
  

    //LOCK PORTRAIT MODE -> Method in AppDelegate
    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }
    
    //METHOD TO DISMISS KEYBOARD WHEN CLICKING ANYWHERE
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @objc func colorWellChanged(_ sender: Any) {
        team1ColorWell.backgroundColor = team1ColorWell.selectedColor
        team2ColorWell.backgroundColor = team2ColorWell.selectedColor
        
    }

   

    
    @IBAction func continuePressed(_ sender: Any) {
        if(sportSelected == "Baseball"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "BaseballViewController") as! BaseballViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
//            sportVC.team1Color = colorWell1.selectedColor ?? .systemRed
//            sportVC.team2Color = colorWell2.selectedColor ?? .systemBlue
            navigationController?.pushViewController(sportVC, animated: true)
        } else if(sportSelected == "Basketball"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "BasketballViewController") as! BasketballViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
            //sportVC.team1Color = colorWell1.selectedColor ?? .systemRed
           // sportVC.team2Color = colorWell2.selectedColor ?? .systemBlue
            navigationController?.pushViewController(sportVC, animated: true)
        }else if(sportSelected == "Hockey"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "HockeyViewController") as! HockeyViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
//            sportVC.team1Color = colorWell1.selectedColor ?? .systemRed
//            sportVC.team2Color = colorWell2.selectedColor ?? .systemBlue
            navigationController?.pushViewController(sportVC, animated: true)
        }else if(sportSelected == "Soccer"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "SoccerViewController") as! SoccerViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            navigationController?.pushViewController(sportVC, animated: true)
        }else if(sportSelected == "Football"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "FootballViewController") as! FootballViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            navigationController?.pushViewController(sportVC, animated: true)
        }else{
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "OtherViewController") as! OtherViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
            navigationController?.pushViewController(sportVC, animated: true)
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //let nextVC = storyboard?.instantiateViewController(withIdentifier: "\(sportSelected)ViewController") as! BaseballViewController
//        if(segue.identifier == "editToBasketball"){
//            let nextVC = storyboard?.instantiateViewController(withIdentifier: "BasketballViewController") as! BasketballViewController
//            nextVC.team1Name = "test"
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

