//
//  ViewController.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/19.
//

import UIKit

class ViewController: UIViewController {
    var dataArray:[String] = []
    var dataContent:[String] = ["靖远硒砂瓜", "石门大枣", "靖远四季豆", "大庙香豆腐", "大庙香水梨"]
    
    @IBOutlet weak var Table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for index in 1...5{
            dataArray.append("\(index)")
        }
        Table.reloadData()
    }

    @IBAction func LogOut(_ sender: UIButton) {
        Token.setLogin(false)
        SceneDelegate.shared.toLogin()
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ImgViewCell
        let data = dataArray[indexPath.row]
        let content = dataContent[indexPath.row]
        cell.bind(data)
        cell.bindContent(content)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = dataArray[indexPath.row]
        let content = dataContent[indexPath.row]
        let controller = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        controller.id = data
        controller.content = content
        navigationController?.pushViewController(controller, animated: true)
    }
}

