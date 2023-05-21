//
//  SplashController.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/19.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let time: TimeInterval = 1.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
            SceneDelegate.shared.next()
        }
        
        // Do any additional setup after loading the view.
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
