//
//  TeamEditViewController.swift
//  ScoreKeeper
//
//  Created by Ernesto Gomila on 7/13/22.
//

import UIKit

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
    @IBOutlet weak var team2ColorImageView: UIImageView!
    
    @IBOutlet weak var team1ColorImageView: UIImageView!
    var button1Pressed: Bool = false
    var button2Pressed: Bool = false

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
        
        //teamColorButton.backgroundColor = UIColor.red
        //team2ColorButton.backgroundColor = UIColor.blue
        
        button1Pressed = false
        button2Pressed = false
        
        team1ColorImageView.backgroundColor = .systemRed
        team2ColorImageView.backgroundColor = .systemBlue
        
        team1ColorImageView.layer.cornerRadius = 8.0
        team2ColorImageView.layer.cornerRadius = 8.0
        team1ColorImageView.layer.borderWidth = 2
        team2ColorImageView.layer.borderWidth = 2
        
        
        team1Label.sizeToFit()
        team2Label.sizeToFit()
        team1NameLabel.sizeToFit()
        team2NameLabel.sizeToFit()
        team1ColorLabel.sizeToFit()
        team2ColorLabel.sizeToFit()
        colorWell1.backgroundColor = .systemRed
        view.addSubview(colorWell1)
        view.addSubview(colorWell2)
        colorWell1.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        colorWell2.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        print("Hello")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        colorWell1.translatesAutoresizingMaskIntoConstraints = true
        colorWell2.translatesAutoresizingMaskIntoConstraints = true
       
        colorWell1.frame = CGRect(x: 38, y: 460, width: 0, height: 0)
        colorWell2.frame = CGRect(x: 260, y: 460, width: 0, height: 0)
    }
   
    let colorWell1: UIColorWell = {
        let colorWell1 = UIColorWell()
        colorWell1.backgroundColor = .systemRed
        colorWell1.title = "Team 1 Color"

        return colorWell1
    }()
    
    let colorWell2: UIColorWell = {
       let colorWell2 = UIColorWell()
        colorWell2.backgroundColor = .systemBlue
        colorWell2.title = "Team 2 Color"
        return colorWell2
    }()
    
    @objc private func colorChanged(){
        team1ColorImageView.backgroundColor = colorWell1.selectedColor
        colorWell1.backgroundColor = colorWell1.selectedColor
        team2ColorImageView.backgroundColor = colorWell2.selectedColor
        colorWell2.backgroundColor = colorWell2.selectedColor
    }

   

    
    @IBAction func continuePressed(_ sender: Any) {
        if(sportSelected == "Baseball"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "BaseballViewController") as! BaseballViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            navigationController?.pushViewController(sportVC, animated: true)
        } else if(sportSelected == "Basketball"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "BasketballViewController") as! BasketballViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
            sportVC.team1Color = colorWell1.selectedColor ?? .systemRed
            sportVC.team2Color = colorWell2.selectedColor ?? .systemBlue
            navigationController?.pushViewController(sportVC, animated: true)
        }else if(sportSelected == "Hockey"){
            let sportVC = storyboard?.instantiateViewController(withIdentifier: "HockeyViewController") as! HockeyViewController
            sportVC.team1Name = team1Input.text ?? "Team 1"
            sportVC.team2Name = team2Input.text ?? "Team 2"
            sportVC.team1Color = colorWell1.selectedColor ?? .systemRed
            sportVC.team2Color = colorWell2.selectedColor ?? .systemBlue
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
            navigationController?.pushViewController(sportVC, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let nextVC = storyboard?.instantiateViewController(withIdentifier: "\(sportSelected)ViewController") as! BaseballViewController
        if(segue.identifier == "editToBasketball"){
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "BasketballViewController") as! BasketballViewController
            nextVC.team1Name = "test"
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

