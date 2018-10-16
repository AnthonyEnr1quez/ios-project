//
//  FetchExecuteViewController.swift
//  IOS Project
//
//  Created by student on 10/15/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit


class FetchExecuteViewController: UIViewController{
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var InstructionTXT: UITextField!
    
    @IBOutlet weak var FetchTXT: UITextField!
    @IBOutlet weak var decodeTXT: UITextField!
    
    @IBOutlet weak var DFetchTXT: UITextField!
    
    @IBOutlet weak var ExecuteTXT: UITextField!
    
    
    @IBOutlet weak var rreturn: UITextField!
    
    
    @IBOutlet weak var InsAddressTXT: UITextField!
    
    
    @IBOutlet weak var data1MemTXT: UITextField!
    
    
    @IBOutlet weak var data2MemTXT: UITextField!
    
    
    @IBOutlet weak var addMemTXT: UITextField!
    
    
    @IBOutlet weak var ContentMemTXT: UITextField!
    
    
    @IBOutlet weak var Program_counterTXT: UITextField!
    
    
    @IBOutlet weak var ReturnADDTXT: UITextField!
    
    @IBOutlet weak var resultTXT: UITextField!
    
    
    @IBOutlet weak var data2TXT: UITextField!
    
    @IBOutlet weak var data1TXT: UITextField!
    
    
    @IBOutlet weak var DataAdd1TXT: UITextField!
    
    
    
    @IBOutlet weak var DataAdd2TXT: UITextField!
    
    @IBOutlet weak var ResultAddTXT: UITextField!
    
    @IBOutlet weak var DataMEM1TXT: UITextField!
    
    @IBOutlet weak var DataMEM2TXT: UITextField!
    
    
    @IBOutlet weak var ResultMEMTXT: UITextField!
    
    @IBAction func PlayButton(_ sender: Any) {
        
        InsAddressTXT.text = "\(800)"
        addMemTXT.text = "\(800)"
        ContentMemTXT.text = "ADD 4000, 2000, 2080"
         sleep(1)
        fetch()
        sleep(1)
        decode()
        sleep(1)
        dataFetch()
        sleep(1)
        
        iExecution()
        sleep(1)
        rresult()
        
        
        
    }
    func fetch(){
       
        FetchTXT.backgroundColor = UIColor.orange
        
        Program_counterTXT.text = "\(800)"
        
        InstructionTXT.text = "ADD 4000, 2000, 2080"
    }
    func decode(){
        decodeTXT.backgroundColor = UIColor.orange
        FetchTXT.backgroundColor = UIColor.white
        InsAddressTXT.isHidden = true
        ReturnADDTXT.text = "4000"
        data1MemTXT.text = "2000"
        data2MemTXT.text = "2080"
        
        
    }
    func dataFetch(){
        DFetchTXT.backgroundColor = UIColor.orange
        decodeTXT.backgroundColor = UIColor.white
        FetchTXT.backgroundColor = UIColor.white
        InsAddressTXT.isHidden = true
        data1TXT.text = "\(30)"
        data2TXT.text = "\(12)"
        DataAdd1TXT.text = "\(2000)"
        DataAdd2TXT.text = "\(2080)"
        ResultAddTXT.text = "\(4000)"
        DataMEM1TXT.text = "\(30)"
        DataMEM2TXT.text = "\(12)"
        
        
    }
    func iExecution()
    {
        ExecuteTXT.backgroundColor = UIColor.orange
        DFetchTXT.backgroundColor = UIColor.white
        decodeTXT.backgroundColor = UIColor.white
        FetchTXT.backgroundColor = UIColor.white
        InstructionTXT.isHidden = true
        InsAddressTXT.isHidden = true
        resultTXT.text = "\(42)"
        data1MemTXT.isHidden = true
        data2MemTXT.isHidden = true
    }
    func rresult(){
        rreturn.backgroundColor = UIColor.orange
        ExecuteTXT.backgroundColor = UIColor.white
        DFetchTXT.backgroundColor = UIColor.white
        decodeTXT.backgroundColor = UIColor.white
        FetchTXT.backgroundColor = UIColor.white
        InstructionTXT.isHidden = true
      
        data1TXT.isHidden = true
        data2TXT.isHidden = true
        InsAddressTXT.text = "\(800)"
        ResultMEMTXT.text = "\(42)"
        
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
