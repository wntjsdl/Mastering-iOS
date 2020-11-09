//
//  CustomCellPopUpViewController.swift
//  TableView
//
//  Created by JuSun Kang on 2020/11/09.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

class CustomCellPopUpViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        closeBtn.layer.cornerRadius = 5
        print(self.navigationController?.presentedViewController)
        if !self.isBeingPresented {
            closeBtn.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
