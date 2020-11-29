//
//  ThirdViewController.swift
//  les4.1
//
//  Created by Павел on 29.11.2020.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    
    private var squareIsRight: Bool = false
    
    private var isFlipped: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
    
    
        UIView.transition(from: isFlipped ? view1 : view3,
                          to: isFlipped ? view3 : view1,
                          duration: 1,
                          options: [.transitionFlipFromTop, .showHideTransitionViews]) { _ in
            self.isFlipped.toggle()
            
        }
        
        print("Жыве Беларусь")
    }
    
    
    @IBAction func tapView2(_ sender: Any) {
        if squareIsRight {
            rightConstraint.constant = 124
        } else {
            rightConstraint.constant = 50
        }
        
        
        UIView.animate(withDuration : 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut) {
            self.view2.layoutIfNeeded()
        
        switch Int.random(in: 0...3) {
        case 0: self.view2.backgroundColor = .systemGreen
        case 1: self.view2.backgroundColor = .systemGray
        case 2: self.view2.backgroundColor = .systemRed
        case 3: self.view2.backgroundColor = .systemYellow
        default: self.view2.backgroundColor = .black
        }
            
        }
            completion: { _ in
            self.squareIsRight.toggle()
        }
        
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


