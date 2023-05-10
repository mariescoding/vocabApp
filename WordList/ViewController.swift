//
//  ViewController.swift
//  WordList
//
//  Created by Marie Muramatsu on 10/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil {
            if saveData.array(forKey: "WORD")!.count > 0{
                performSegue(withIdentifier: "toQuestionView", sender:nil)
            } else{
                let alert = UIAlertController(
                    title:"",
                    message: "",
                    preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: nil
                ))
                
                self.present(alert, animated: true, completion: nil)
            }
            
        }
    }


}

