//
//  LandingViewController.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 12/2/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var baseConversionBtn: UIButton!
    @IBOutlet weak var imageEncodingBtn: UIButton!
    @IBOutlet weak var fetchExecuteBtn: UIButton!
    @IBOutlet weak var snapBtn: UIButton!
    
    // add corners and shadows to buttons
    // adds infolight button to display project info
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let infoLightBtn = UIButton(type: .infoLight)
        infoLightBtn.addTarget(self, action: #selector(displayInfo), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: infoLightBtn)
        
        baseConversionBtn.layer.cornerRadius = 20
        baseConversionBtn.layer.shadowColor = UIColor.darkGray.cgColor
        baseConversionBtn.layer.shadowRadius = 10
        baseConversionBtn.layer.shadowOpacity = 1.0
        
        imageEncodingBtn.layer.cornerRadius = 20
        imageEncodingBtn.layer.shadowColor = UIColor.darkGray.cgColor
        imageEncodingBtn.layer.shadowRadius = 10
        imageEncodingBtn.layer.shadowOpacity = 1.0
        
        fetchExecuteBtn.layer.cornerRadius = 20
        fetchExecuteBtn.layer.shadowColor = UIColor.darkGray.cgColor
        fetchExecuteBtn.layer.shadowRadius = 10
        fetchExecuteBtn.layer.shadowOpacity = 1.0
        
        snapBtn.layer.cornerRadius = 20
        snapBtn.layer.shadowColor = UIColor.darkGray.cgColor
        snapBtn.layer.shadowRadius = 10
        snapBtn.layer.shadowOpacity = 1.0
    }
    
    // display project info alert
    @objc func displayInfo(_ sender: Any) {
        let title = "Created Fall 2018 in NWMSU iOS Class"
        let message = "\nPixel Guru Members:\nAnthony Enriquez\nShivani Busireddy\nVijay Kumar Tupakula\nMidhun Kumar Kurapati\n\nTeacher: Dr. Michael Rogers"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
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
