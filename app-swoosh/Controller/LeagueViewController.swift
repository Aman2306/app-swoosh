//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Aman Meena on 23/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    // MARK: Properties
    /*************************************************************************************/
    let SkillVCSegueID = "SkillVCSegue"
    var player: Player!
    
    // MARK: Outlets
    /*************************************************************************************/
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var mensButton: UIButton!
    @IBOutlet weak var womensButton: UIButton!
    @IBOutlet weak var coedButton: UIButton!
    
    // MARK: Actions
    /*************************************************************************************/
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: SkillVCSegueID, sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(league: "mens", button: mensButton)
    }
    @IBAction func onWomesTapped(_ sender: Any) {
       selectLeague(league: "womens", button: womensButton)
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(league: "co-ed", button: coedButton)
    }
    
    // MARK: Custom Methods
    /*************************************************************************************/
    private func selectLeague(league: String, button: UIButton) {
        player.desiredLeague = league
        nextButton.isEnabled = true
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        player = Player()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
        }
    }
}
