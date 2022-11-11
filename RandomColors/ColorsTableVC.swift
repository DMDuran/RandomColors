//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Marco Duran on 11/8/22.
//

import UIKit

class ColorsTableVC: UIViewController {

    //Creating an array of colors
    var colors: [UIColor] = []

    
    //Creating a constant to help with naming
//    enum Cells {
//        static let colorCell = "ColorCell"
//    }
//    enum Segue {
//        static let toDetail = "ToColorsDetailVC"
//    }
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        
    }
    
    //This is going to fill the colors array with random colors using the func createRandomColor
    func addRandomColors () {
        for _ in 0..<50 {
            //Calling the UICOlor+Ext function to create a random color
            colors.append(.random())
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }

}

//Tells us how many rows will appear
extension ColorsTableVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //This is going to list the row to the amount that are in the color array in this case 50
        return colors.count
    }
    
    //Tells what will show in the rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Unwrapping the optional using a guard statement
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    //When we select a row, it will fire the ToColorDetailVC
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
    
    
}
