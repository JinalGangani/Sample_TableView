//
//  detailsVC.swift
//  Exam1
//
//  Created by Kevin Lathidadiya on 03/09/21.
//

import UIKit

class tableModel{
    var userName:String?
    var userAge:String?
    
    init(userName:String,userAge:String) {
        self.userName = userName
        self.userAge = userAge
    }
}

class detailsVC: UIViewController {
    
    private let myTableView = UITableView()
    
    var myArray = [tableModel]()
    
    func setTable(){
        
        myTableView.frame = self.view.frame
        myTableView.backgroundColor = UIColor.red
        self.view.addSubview(myTableView)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.register(customTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTable()
        myArray.append(tableModel(userName: "kevin", userAge: "18"))
        myArray.append(tableModel(userName: "jinal", userAge: "15"))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
}

extension detailsVC : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? customTableViewCell
        else{
            fatalError("No Data Found")
        }
        cell.userNamelbl.text = myArray[indexPath.row].userName
        cell.userAgelbl.text  = myArray[indexPath.row].userAge
//        cell.imageView?.image = myArray[indexPath.row].images
        return cell
    }
    

}
