//
//  SecViewController.swift
//  les4.1
//
//  Created by Павел on 29.11.2020.
//

import UIKit

class SecViewController: UIViewController {

    @IBOutlet weak var squareView: UIView!
    
    // override func viewDidLoad() {
    //    super.viewDidLoad()

        // Do any additional setup after loading the view.
   // }
    
    @IBAction func change(_ sender: Any) {
    
    let start = squareView.center
    
    UIView.animate(withDuration: 0.3) {
        self.squareView.center = CGPoint(x: start.x - 100, y: start.y)
    } completion: { _ in
        UIView.animate(withDuration: 0.3) {
            self.squareView.center = CGPoint(x: start.x - 100, y: start.y + 100)
        } completion: { _ in
            UIView.animate(withDuration: 0.3) {
                self.squareView.center = CGPoint(x: start.x, y: start.y + 100)
            } completion: { _ in
                UIView.animate(withDuration: 0.3) {
                    self.squareView.center = start
                } completion: { _ in
                    
                }
            }
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

}
