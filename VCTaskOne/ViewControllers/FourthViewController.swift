//
//  FourthViewController.swift
//  VCTaskOne
//
//  Created by Alex Han on 09.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToFirstVC(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func didPushToVC5(_ sender: Any) {
        let viewControllerID = "FifthVC"
        performPush(viewControllerFromStoryboard: storyboard?.instantiateViewController(identifier: viewControllerID))
    }
    
    func performPush(viewControllerFromStoryboard: UIViewController?) {
        if let viewController = viewControllerFromStoryboard {            
            self.navigationController?.pushViewController(viewController, animated: true)
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
