//
//  ViewController.swift
//  VCTaskOne
//
//  Created by Alex Han on 09.07.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPushToVC2(_ sender: Any) {
        let viewControllerID = String(describing: SecondViewController.self)
        performPush(viewControllerFromStoryboard:
                        storyboard?.instantiateViewController(identifier: viewControllerID) as? SecondViewController)
    }
    
    @IBAction func didModalVC3(_ sender: Any) {
        let viewControllerID = String(describing: ThirdViewController.self)
        performModal(viewControllerFromStoryboard:
                        storyboard?.instantiateViewController(identifier: viewControllerID) as? ThirdViewController)
       
    }
    
    @IBAction func didModalVC4(_ sender: Any) {
        let viewControllerID = String(describing: FourthViewController.self)
        let navigationController = UINavigationController()
                                                                 
        performModal(viewControllerFromStoryboard:
                     storyboard?.instantiateViewController(identifier: viewControllerID) as? FourthViewController,
                     optionalNC:  navigationController)
            
        }
        
    
    func performPush(viewControllerFromStoryboard: UIViewController?) {
        if let viewController = viewControllerFromStoryboard {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func performModal(viewControllerFromStoryboard: UIViewController?,
                      optionalNC navigationController: UINavigationController? = nil) {
        
        if let viewController = viewControllerFromStoryboard {
            if navigationController == nil {
                self.navigationController?.present(viewController, animated: true)
            } else if let unwrappedNC = navigationController {
                unwrappedNC.setViewControllers([viewController], animated: false)
                self.navigationController?.present(unwrappedNC, animated: true)
            }
        }
    }
}

