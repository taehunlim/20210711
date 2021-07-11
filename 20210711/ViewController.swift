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
        
        // 화면 띄우는 코드
        present(alertVC, animated: true, completion: nil)
        
    }
    
    //단순 페이지 이동
    @IBAction func nextBtn(_ sender: Any) {
        
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        
        let detailVC = mainSB.instantiateViewController(withIdentifier: "detailVC")
        
        //사용시 풀 스크린, 미사용시 모달 스크린
        detailVC.modalPresentationStyle = .fullScreen
        
        // detailVC ID 로 화면 이동
        present(detailVC, animated: true, completion: nil)
        
    }


    //navigation을 이용한 페이지 이동
    @IBAction func secondNextBtn(_ sender: Any) {
        
        //상단에 navigation이 생기고 bakc button이 생김.
        //단순 페이지 이동의 이전 페이지로 돌아가는 dismiss 버튼은 안먹힌다.
        
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "detailVC")
        
        navigationController?.pushViewController(detailVC!, animated: true)
        
    }
}

