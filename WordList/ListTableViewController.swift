//
//  ListTableViewController.swift
//  WordList
//
//  Created by Marie Muramatsu on 10/5/23.
//

import UIKit

class ListTableViewController: UITableViewController {

    var wordArray: [Dictionary<String, String>] = []
        
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveData.array(forKey: "WORD") != nil {
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
            
        tableView.reloadData()
        }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
           // #warning Incomplete implementation, return the number of sections
           return 1
    }

       //セルの個数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // #warning Incomplete implementation, return the number of rows
        return wordArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
           
           //wordArrayからDictionaryを取り出す
           let nowIndexPathDictionary = wordArray[indexPath.row]
           
           //ラベルに代入
           cell.englishLabel.text = nowIndexPathDictionary["english"]
           cell.japaneseLabel.text = nowIndexPathDictionary["japanese"]
           
           return cell
    }

}
