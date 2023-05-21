//
//  DetailViewController.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/20.
//

import UIKit

class DetailViewController: UIViewController {
    var id:String!
    var content:String!
    
    @IBOutlet weak var imgDetail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = content + "详情"
        imgDetail.image = UIImage(named: id)
        
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
