//
//  FetchExecuteViewController.swift
//  IOS Project
//
//  Created by student on 10/15/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

class FetchExecuteViewController: UIViewController{
    
    // control unit
    @IBOutlet weak var instructionTXT: UITextField!
    @IBOutlet weak var iFetchTXT: UITextField!
    @IBOutlet weak var decodeTXT: UITextField!
    @IBOutlet weak var dFetchTXT: UITextField!
    @IBOutlet weak var executeTXT: UITextField!
    @IBOutlet weak var programCounterTXT: UITextField!
    @IBOutlet weak var rReturnTXT: UITextField!
    
    // ALU
    @IBOutlet weak var data1TXT: UITextField!
    @IBOutlet weak var data2TXT: UITextField!
    @IBOutlet weak var resultTXT: UITextField!
    @IBOutlet weak var returnAddressTXT: UITextField!

    // memory
    @IBOutlet weak var instructionAddressTXT: UITextField!
    @IBOutlet weak var dataAddress1TXT: UITextField!
    @IBOutlet weak var dataAddress2TXT: UITextField!
    
    // memory address
    @IBOutlet weak var addMemTXT: UITextField!
    @IBOutlet weak var dataAdd1TXT: UITextField!
    @IBOutlet weak var dataAdd2TXT: UITextField!
    @IBOutlet weak var resultAddTXT: UITextField!

    // memory contents
    @IBOutlet weak var contentMemTXT: UITextField!
    @IBOutlet weak var dataMem1TXT: UITextField!
    @IBOutlet weak var dataMem2TXT: UITextField!
    @IBOutlet weak var resultMemTXT: UITextField!
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var resetLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        resetLBL.isHidden = true
    }
    
    @IBAction func playButton(_ sender: Any) {
        resetLBL.isHidden = true
        resetLBL.text = "Will reset in 20 sec"
        playBtn.isHidden = true
        
        instructionAddressTXT.text = "\(800)"
        addMemTXT.text = "\(800)"
        contentMemTXT.text = "ADD 4000, 2000, 2080"
        
        // fetch
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { self.fetch() }
        
        // decode
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) { self.decode() }
        
        // dataFetch
        DispatchQueue.main.asyncAfter(deadline: .now() + 20.0) { self.dataFetch() }
        
        // iExecution
        DispatchQueue.main.asyncAfter(deadline: .now() + 30.0) { self.iExecution() }
        
        // rresult
        DispatchQueue.main.asyncAfter(deadline: .now() + 40.0) { self.rresult() }
        
        // reset uiview
        DispatchQueue.main.asyncAfter(deadline: .now() + 60.0) { self.reset() }
    }
    
    private func fetch() {
        iFetchTXT.backgroundColor = UIColor.orange
        programCounterTXT.text = "\(800)"
        instructionTXT.text = "ADD 4000, 2000, 2080"
    }
    
    private func decode() {
        decodeTXT.backgroundColor = UIColor.orange
        iFetchTXT.backgroundColor = UIColor.white
        instructionAddressTXT.isHidden = true
        returnAddressTXT.text = "4000"
        dataAddress1TXT.text = "2000"
        dataAddress2TXT.text = "2080"
    }
    
    private func dataFetch() {
        dFetchTXT.backgroundColor = UIColor.orange
        decodeTXT.backgroundColor = UIColor.white
        data1TXT.text = "\(30)"
        data2TXT.text = "\(12)"
        dataAdd1TXT.text = "\(2000)"
        dataAdd2TXT.text = "\(2080)"
        resultAddTXT.text = "\(4000)"
        dataMem1TXT.text = "\(30)"
        dataMem2TXT.text = "\(12)"
    }
    
    private func iExecution() {
        executeTXT.backgroundColor = UIColor.orange
        dFetchTXT.backgroundColor = UIColor.white
        instructionTXT.isHidden = true
        resultTXT.text = "\(42)"
        dataAddress1TXT.isHidden = true
        dataAddress2TXT.isHidden = true
    }
    
    private func rresult() {
        rReturnTXT.backgroundColor = UIColor.orange
        executeTXT.backgroundColor = UIColor.white
        data1TXT.isHidden = true
        data2TXT.isHidden = true
        instructionAddressTXT.text = "\(800)"
        resultMemTXT.text = "\(42)"
        resetLBL.textColor = .orange
        resetLBL.isHidden = false
    }
    
    private func reset() {
        rReturnTXT.backgroundColor = .white
        instructionAddressTXT.isHidden = false
        instructionTXT.isHidden = false
        dataAddress1TXT.isHidden = false
        dataAddress2TXT.isHidden = false
        data1TXT.isHidden   = false
        data2TXT.isHidden = false
        programCounterTXT.text = ""
        addMemTXT.text = ""
        dataAdd1TXT.text = ""
        dataAdd2TXT.text = ""
        resultAddTXT.text = ""
        contentMemTXT.text = ""
        dataMem1TXT.text = ""
        dataMem2TXT.text = ""
        resultMemTXT.text = ""
        resultTXT.text = ""
        returnAddressTXT.text = ""
        instructionTXT.text = ""
        programCounterTXT.text = ""
        data1TXT.text = ""
        data2TXT.text = ""
        dataAddress1TXT.text = ""
        instructionAddressTXT.text = ""
        dataAddress2TXT.text = ""
        resetLBL.text = "Reset Finished"
        resetLBL.textColor = .green
        playBtn.isHidden = false
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
