//
//  ViewController.swift
//  PingPong
//
//  Created by Matheus Lopes on 27/08/22.
//

import UIKit

class PlayersViewController: UIViewController {
    
    @IBOutlet weak var fieldPlayerOne: UITextField!
    @IBOutlet weak var fieldPlayerTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let matchViewController = segue.destination as? MatchViewController
        matchViewController?.playerOne = fieldPlayerOne.text
        matchViewController?.playerTwo = fieldPlayerTwo.text
    }
}
