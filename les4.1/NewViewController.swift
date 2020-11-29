//
//  NewViewController.swift
//  les4.1
//
//  Created by Павел on 29.11.2020.
//

import UIKit

class NewViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
       button.setTitle("Кнопка", for: .normal)
       button.setTitleColor(UIColor.gray, for: .normal)
        button.backgroundColor = UIColor.white
        
        button.addTarget(self, action: #selector (tap1(_:)), for: .touchDown)
        
       
        self.view.addSubview(button)
           
           button.translatesAutoresizingMaskIntoConstraints = false
           
       let centerHorizontally = button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
               
               let topAnchor = button.topAnchor.constraint(equalTo: view.topAnchor, constant: 260)
               
               NSLayoutConstraint.activate([topAnchor, centerHorizontally])
        
        
    }
    
        
            
           @objc func tap1(_ sender: Any) {
                print("Button tapped")
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           //let controller = storyboard.instantiateViewController(identifier: "ID3")
            guard let controller = storyboard.instantiateViewController(identifier: "ID3") as? ViewController else { return }
            controller.text = "Yes"
            
            present (controller, animated: true)
            
            
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


