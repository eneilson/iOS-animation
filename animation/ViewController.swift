//
//  ViewController.swift
//  animation
//
//  Created by Student on 11/4/15.
//  Copyright © 2015 eneilson.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quicador: UIView!
    @IBOutlet weak var time: UIImageView!
    
    private var nextBall : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureQuicador();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureQuicador(){
        self.quicador.layer.cornerRadius = self.quicador.bounds.height / 2
        
        let gesture = UITapGestureRecognizer(target: self, action: "animateQuicador:")
        self.time.userInteractionEnabled = true
        self.time.addGestureRecognizer(gesture)
        
    }
    
    func animateQuicador(sender:UITapGestureRecognizer){
        if self.quicador.alpha == 0 {
            UIView.animateWithDuration(0.5, delay: 0.4, options: .CurveEaseOut, animations: {
                self.quicador.transform = CGAffineTransformIdentity
                self.quicador.alpha = 1
                
                self.time.transform = CGAffineTransformIdentity
                self.time.alpha = 0.05

                }, completion: { finish in
                    
                })
        } else {
            UIView.animateWithDuration(0.5, delay: 0.4, options: .CurveEaseOut, animations: {
                self.quicador.transform = CGAffineTransformMakeScale(2.6, 2.6)
                self.quicador.alpha = 0
                
                self.time.transform = CGAffineTransformMakeScale(2.6, 2.6)
                self.time.alpha = 1

                }, completion: { finish in
                    
                })
        }
    }
    
    

}

