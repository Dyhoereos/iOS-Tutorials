//
//  YellowViewController.swift
//  SwitchViews
//
//  Created by Dyhoer on 2016-10-02.
//  Copyright © 2016 Dyhoer. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func yellowButtonPressed(sender: UIButton)
    {
        let alert = UIAlertController(title: "Yellow View Button Pressed", message: "You pressed the button on the yellow view", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yep, I did", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}
