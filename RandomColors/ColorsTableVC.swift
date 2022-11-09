//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Marco Duran on 11/8/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    


}

//Tells us how many rows will appear
extension ColorsTableVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

//Tells what will show in the rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

//When we select a row, it will fire the ToColorDetailVC
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailsVC", sender: nil)
    }
    
}
