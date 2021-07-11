//
//  ViewController.swift
//  20210711
//
//  Created by FIFTEEN H on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    // view life cycle
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTItleLabel: UILabel!
    
    
    
    //load 되었을떄
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnTab(_ sender: Any) {
        titleLabel.text = "changed Title"
        subTItleLabel.text = "changed subTitled"
    }
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        
        //style = 앞에 생략후 .만으로 가능
        //controller = modal
        let alertVC = UIAlertController(title: "active", message: "actived", preferredStyle: .actionSheet)
        
        //action = action btn of modal
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        let cancelBtn = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        
        let settingBtn = UIAlertAction(title: "setting", style: .destructive, handler: nil)
        
        alertVC.addAction(okBtn)
        alertVC.addAction(cancelBtn)
        alertVC.addAction(settingBtn)
        
        present(alertVC, animated: true, completion: nil)
        
    }
}

