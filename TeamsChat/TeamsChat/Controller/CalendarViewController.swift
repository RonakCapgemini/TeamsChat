//
//  CalendarViewController.swift
//  TeamsChat
//
//  Created by Ronak Sankhala on 08/12/22.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var customNavBar: CustomNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        customNavBar.titleLabel.text = "Calendar"
    }

}
