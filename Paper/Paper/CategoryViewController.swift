//
//  ViewController.swift
//  Paper
//
//  Created by cscoi005 on 2017. 1. 4..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var categorySegmented: UISegmentedControl!
    @IBOutlet weak var categoryView1: UIView!
    @IBOutlet weak var categoryView2: UIView!
    @IBOutlet weak var categoryView3: UIView!
    @IBOutlet weak var categoryView4: UIView!
    @IBOutlet weak var detailSearchView: UIView!
    @IBOutlet weak var fillUp: UIButton!
    @IBOutlet weak var detailSearchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //categorySegmented.addTarget(self, action: #selector(self.categoryChange), for: .valueChanged)
        
        self.categoryView1.alpha = 1
        self.categoryView2.alpha = 0
        self.categoryView3.alpha = 0
        self.categoryView4.alpha = 0
        self.detailSearchView.alpha = 0
        self.fillUp.alpha = 0
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func categoryChange(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0)
        {
            self.categoryView1.alpha = 1
            self.categoryView2.alpha = 0
            self.categoryView3.alpha = 0
            self.categoryView4.alpha = 0
        }
            
        else if (sender.selectedSegmentIndex == 1)
        {
            self.categoryView1.alpha = 0
            self.categoryView2.alpha = 1
            self.categoryView3.alpha = 0
            self.categoryView4.alpha = 0
        }
            
        else if (sender.selectedSegmentIndex == 2)
        {
            self.categoryView1.alpha = 0
            self.categoryView2.alpha = 0
            self.categoryView3.alpha = 1
            self.categoryView4.alpha = 0
        }
            
        else if (sender.selectedSegmentIndex == 3)
        {
            self.categoryView1.alpha = 0
            self.categoryView2.alpha = 0
            self.categoryView3.alpha = 0
            self.categoryView4.alpha = 1
        }
    }
    
    @IBAction func detailSearch(_ sender: Any) {
        
        self.detailSearchView.alpha = 1
        self.fillUp.alpha = 1
        self.detailSearchButton.alpha = 0
        
        /* self.categoryView1.alpha = 0
        self.categoryView2.alpha = 0
        self.categoryView3.alpha = 0
        self.categoryView4.alpha = 0 */
    }
    
    @IBAction func fillUpAction(_ sender: Any) {
        self.detailSearchView.alpha = 0
        self.fillUp.alpha = 0
        self.detailSearchButton.alpha = 1
        
    }
    
    
    
}

