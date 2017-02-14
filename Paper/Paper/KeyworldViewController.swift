//
//  KeyworldViewController.swift
//  Paper
//
//  Created by cscoi005 on 2017. 2. 13..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

class KeyworldViewController: UIViewController {

    @IBOutlet weak var plusContentsbar: UITextField!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var plusShape: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusContentsbar.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusContents(_ sender: Any) {
        plusContentsbar.alpha = 1
        plus.alpha = 0
        plusShape.alpha = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
