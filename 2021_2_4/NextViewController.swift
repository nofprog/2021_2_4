//
//  NextViewController.swift
//  2021_2_4
//
//  Created by J on 2021/02/04.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        countLabel.text = String(count)
    
        if count >= 10 {
            countLabel.textColor = .cyan
            
        }
    }
    
    
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        countLabel.text = String(count)
        
        if count <= 9 {
            countLabel.textColor = .darkGray
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
