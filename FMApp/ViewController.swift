//
//  ViewController.swift
//  FMApp
//
//  Created by FumingLeo on 2025/11/19.
//

import UIKit
import FMModuleCenter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple;
    }

    @IBAction func presentA(_ sender: Any) {
        let vc = FMModuleCenter.shared.get(FMModuleAServiceProtocol.self)?.getAViewController()
        if let vc = vc {
            present(vc, animated: true)
        }
        else {
            print("getAViewController()失败！没有注册服务：FMModuleAServiceProtocol")
        }
    }
    
}

