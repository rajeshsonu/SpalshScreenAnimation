//
//  ViewController.swift
//  admission24
//
//  Created by Rajesh Nekkanti on 25/04/20.
//  Copyright © 2020 Rajesh Nekkanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var backImg: UIImageView!
    @IBOutlet weak var myLbl: UILabel!
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.Nhello), userInfo: nil, repeats: false)

    }
    
    
    @objc func Nhello() {
        print("text")
                UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            
        },completion: { finish in
            UIView.animate(withDuration: 1, delay: 0.25,options: UIView.AnimationOptions.curveEaseIn,animations: {
                self.callLable()
                self.myImg.transform = CGAffineTransform(scaleX: 0.50, y: 0.50)
                //self.backImg.alpha = 1
                self.callBackImg()
            },completion: nil)})


    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    func callLable()  {
        UIView.animate(withDuration: 0.5, delay: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                
            }
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.hello), userInfo: nil, repeats: false)
            
            
            self.myLbl.center = CGPoint(x: self.myImg.frame.midX, y: self.myImg.frame.maxY - 80)
            print(self.myLbl.frame)
        },completion: { finish in
            UIView.animate(withDuration: 1, delay: 0.25,options: UIView.AnimationOptions.curveEaseOut,animations: {
                
            },completion: nil)})
        
    }
    
    @objc func hello() {
        print("text")
        self.myLbl.isHidden = false
        
    }
    
    
    func callBackImg() {
        UIView.animate(withDuration: 2.0, animations: {
            self.backImg.alpha = 0.0
        }) { (finished) in
            // fade out
            UIView.animate(withDuration: 3.0, animations: {
                self.backImg.alpha = 1.0
            })
        }

    }
    
}



