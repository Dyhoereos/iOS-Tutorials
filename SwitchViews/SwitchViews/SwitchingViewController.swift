//
//  SwitchingViewController.swift
//  SwitchViews
//
//  Created by Dyhoer on 2016-10-02.
//  Copyright © 2016 Dyhoer. All rights reserved.
//

import UIKit

class SwitchingViewController: UIViewController {

    private var blueViewController: BlueViewController!
    private var yellowViewController: YellowViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! BlueViewController
        blueViewController.view.frame = view.frame
        switchViewController(from:nil, to: blueViewController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        if blueViewController != nil && blueViewController!.view.superview == nil
        {
            blueViewController = nil
        }
        if yellowViewController != nil && yellowViewController!.view.superview == nil
        {
            yellowViewController = nil
        }
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem)
    {
        //create the new view controller, if required
        if yellowViewController?.view.superview == nil
        {
            if yellowViewController == nil
            {
                yellowViewController = storyboard?.instantiateViewController(withIdentifier: "Yellow") as! YellowViewController
            }
        }
        else if blueViewController?.view.superview == nil
        {
            if blueViewController == nil
            {
                blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! BlueViewController
            }
        }
        
        //switch view controllers
        if blueViewController != nil && blueViewController!.view.superview != nil
        {
            yellowViewController.view.frame = view.frame
            switchViewController(from: blueViewController, to: yellowViewController)
        }
        else
        {
            blueViewController.view.frame = view.frame
            switchViewController(from: yellowViewController, to: blueViewController)
        }
    }
    
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?)
    {
        if fromVC != nil
        {
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        
        if toVC != nil
        {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
    }
}
