//
//  MatchViewController.swift
//  PingPong
//
//  Created by Matheus Lopes on 27/08/22.
//

import UIKit

class MatchViewController: UIViewController {

    @IBOutlet weak private var labelPlayerOne: UILabel!
    @IBOutlet weak private var labelPlayerTwo: UILabel!
    @IBOutlet weak private var labelScorePlayerOne: UILabel!
    @IBOutlet weak private var labelScorePlayerTwo: UILabel!
    @IBOutlet weak private var textViewScores: UITextView!
    
    var playerOne: String? = "Jogador 1"
    var playerTwo: String? = "Jogador 2"

    override func viewDidLoad() {
        super.viewDidLoad()
        labelPlayerOne.text = playerOne
        labelPlayerTwo.text = playerTwo
    }
    
    
    
    @IBAction func addScore(_ sender: UIButton) {
        let label = sender.tag == 1 ? labelScorePlayerOne : labelScorePlayerTwo
        let score = Int(label!.text!) ?? 0
        label?.text = "\(score + 1)"
    }
    
    @IBAction func showScores(_ sender: UIButton) {
        textViewScores.text = "\(playerOne!) (\(labelScorePlayerTwo.text!)) x (\(labelScorePlayerTwo.text!)) \(playerTwo!) \n"
    }
}
