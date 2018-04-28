//
//  ViewController.swift
//  DemoCreateStroyboard
//
//  Created by Chao Shin on 2018/4/28.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonPress(_ sender: UIButton) {
        let secondStroyboard = UIStoryboard(name: "Second", bundle: nil) // 生成要切換的Stroyboard
        if let controller = secondStroyboard.instantiateViewController(withIdentifier: "SecondView") as? SecondViewController { // 生成切換Stroyboard的controller
            controller.text = "Page2"
//            present(controller, animated: true, completion: nil) // 顯示下一個畫面，使用present
            navigationController?.pushViewController(controller, animated: true) // 顯示下一個畫面，使用push
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

