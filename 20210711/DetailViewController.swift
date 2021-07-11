//
//  DetailViewController.swift
//  20210711
//
//  Created by FIFTEEN H on 2021/07/11.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn(_ sender: Any) {
    
        // 이전의 present로 출력하기 전 화면으로 돌림 present dismiss
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func secondBackBtn(_ sender: Any) {
        
        
        // push pop
        // navigation push로 들어온 화면에서 뒤로가기 버튼
        navigationController?.popViewController(animated: true)
    }
}
