//
//  WelcomeScreenViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 6/20/23.
//

import UIKit

class WelcomeScreenViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeLabelText
    }
    
    @IBAction func logOutButtonPressed() {
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
