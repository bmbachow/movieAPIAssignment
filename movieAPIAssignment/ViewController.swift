//
//  ViewController.swift
//  movieAPIAssignment
//
//  Created by Brian Bachow on 2/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickMe(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "MovieName")
        self.present(vc, animated: true, completion: nil)
    }
    

}

