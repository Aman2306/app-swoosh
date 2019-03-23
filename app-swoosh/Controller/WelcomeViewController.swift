//
//  WelcomeViewController.swift
//  app-swoosh
//
//  Created by Aman Meena on 22/03/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: Properties
    /*************************************************************************************/
    var player: Player!
    
    
    // MARK: Outlets
    /*************************************************************************************/
    @IBOutlet weak var swooshLogo: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    // MARK: Actions
    /*************************************************************************************/
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
    // MARK: Custom Methods
    /*************************************************************************************/
    
    
    // MARK: viewDidLoad()
    /*************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

