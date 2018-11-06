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
        
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
            
            self.FetchTXT.backgroundColor = UIColor.orange
            
            self.Program_counterTXT.text = "\(800)"
            
            self.InstructionTXT.text = "ADD 4000, 2000, 2080"
            
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 20.0) {
            
            self.decodeTXT.backgroundColor = UIColor.orange
            self.FetchTXT.backgroundColor = UIColor.white
            self.InsAddressTXT.isHidden = true
            self.ReturnADDTXT.text = "4000"
            self.data1MemTXT.text = "2000"
            self.data2MemTXT.text = "2080"
            
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 30.0) {
            
            self.DFetchTXT.backgroundColor = UIColor.orange
            self.decodeTXT.backgroundColor = UIColor.white
            self.FetchTXT.backgroundColor = UIColor.white
            self.InsAddressTXT.isHidden = true
            self.data1TXT.text = "\(30)"
            self.data2TXT.text = "\(12)"
            self.DataAdd1TXT.text = "\(2000)"
            self.DataAdd2TXT.text = "\(2080)"
            self.ResultAddTXT.text = "\(4000)"
            self.DataMEM1TXT.text = "\(30)"
            self.DataMEM2TXT.text = "\(12)"
            
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 40.0) {
            
            self.ExecuteTXT.backgroundColor = UIColor.orange
            self.DFetchTXT.backgroundColor = UIColor.white
            self.decodeTXT.backgroundColor = UIColor.white
            self.FetchTXT.backgroundColor = UIColor.white
            self.InstructionTXT.isHidden = true
            self.InsAddressTXT.isHidden = true
            self.resultTXT.text = "\(42)"
            self.data1MemTXT.isHidden = true
            self.data2MemTXT.isHidden = true
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 60.0) {
            
            self.rreturn.backgroundColor = UIColor.orange
            self.ExecuteTXT.backgroundColor = UIColor.white
            self.DFetchTXT.backgroundColor = UIColor.white
            self.decodeTXT.backgroundColor = UIColor.white
            self.FetchTXT.backgroundColor = UIColor.white
            self.InstructionTXT.isHidden = true
            
            self.data1TXT.isHidden = true
            self.data2TXT.isHidden = true
            self.InsAddressTXT.text = "\(800)"
            self.ResultMEMTXT.text = "\(42)"
            
        }
//        delay(4.0){
//            fetch()
//
//        }
//        func delay(delay: Double, closure: ()->()) {
//
//
//
//            dispatch_after(
//                dispatch_time(
//                    dispatch_time_t(DISPATCH_TIME_NOW),
//                    Int64(delay * Double(NSEC_PER_SEC))
//                ),
//                dispatch_get_main_queue(),
//                closure
//            )
//        }
//       let now = Date()
//
//     let now1 = now.addingTimeInterval(0.5*60.0)
//       let now2 = now.addingTimeInterval(1*60.0)
//         let now3 = now.addingTimeInterval(1.5*60.0)
//         let now4 = now.addingTimeInterval(2*60.0)
//         let now5 = now.addingTimeInterval(2.5*60.0)
//
//        if  now > now1
//        {
//            fetch()
//           print("hai")
//        }
//        if  now1 > now2 {
//            decode()
//        }
//        if now2 > now3
//        {
//            dataFetch()
//        }
//        if now3 > now4
//        {
//            iExecution()
//        }
//        if  now4 > now5
//        {
//            rresult()
//        }
//        UIView.animate(withDuration: 1.0, delay: 3.5, options: [], animations: {self.fetch()}, completion: nil)
//   UIView.animate(withDuration: 1.0, delay: 10, options: [], animations: {self.decode()}, completion: nil)
//     UIView.animate(withDuration: 1.0, delay: 15.5, options: [], animations: {self.dataFetch()}, completion: nil)
//        UIView.animate(withDuration: 1.0, delay: 17.5, options: [], animations: {self.iExecution()}, completion: nil)
// UIView.animate(withDuration: 1.0, delay: 20.5, options: [], animations: {self.rresult()}, completion: nil)
//        fetch()
//
//        decode()
//        dataFetch()
//        iExecution()
//        rresult()
        //self.run();
    }
    
//    func run(){
//        DispatchQueue.main.asyncAfter(deadline: .now() + 20)
//        {
//            self.fetch()
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 20)
//        {
//            self.decode()
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 20)
//        {
//            self.dataFetch()
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 20)
//        {
//            self.iExecution()
//        }
//
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 20)
//        {
//            self.rresult()
//        }
//
//    }
    
   
    
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
