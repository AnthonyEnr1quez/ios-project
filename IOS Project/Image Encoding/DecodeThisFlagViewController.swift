//
//  DecodeThisFlagViewController.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 11/20/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

private let cellReuseId = "pixel"

class DecodeThisFlagViewController: UIViewController {
    
    @IBOutlet weak var flagCollectionView: UICollectionView!
    @IBOutlet weak var firstColorView: UIView!
    @IBOutlet weak var secondColorView: UIView!
    @IBOutlet weak var thirdColorView: UIView!
    @IBOutlet weak var firstColorLabel: UILabel!
    @IBOutlet weak var secondColorLabel: UILabel!
    @IBOutlet weak var thirdColorLabel: UILabel!
    @IBOutlet weak var colorTable: UIView!
    @IBOutlet weak var lcPairTV: UITextView!

    var problemFlag:Flag = FlagRepository.flagRepository.flags.randomElement()!
    var selectedColorView:UIView!
    var touchedCells:[UICollectionViewCell]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setupVC()
    }
    
    // adds properties to color table
    // sets first selected color
    // display lc pair text
    private func setupVC() {
        firstColorLabel.text = problemFlag.hexLabels[0]
        secondColorLabel.text = problemFlag.hexLabels[1]
        thirdColorLabel.text = problemFlag.hexLabels[2]
        lcPairTV.text = problemFlag.encodingDescription
        
        firstColorView.backgroundColor = problemFlag.colors[0]
        secondColorView.backgroundColor = problemFlag.colors[1]
        thirdColorView.backgroundColor = problemFlag.colors[2]
        
        selectColor(colorView: firstColorView)
    }
    
    // removes border from old color
    // changes selected color value to new color
    // adds black border to new color, red if new color is black
    private func selectColor(colorView:UIView) {
        if selectedColorView != nil {
            selectedColorView.layer.borderWidth = 0
        }
        
        selectedColorView = colorView
        colorView.layer.borderWidth = 5
        
        if colorView.backgroundColor == UIColor(red: 0, green: 0, blue: 0, alpha: 1.0) {
            colorView.layer.borderColor = UIColor.red.cgColor
        } else {
            colorView.layer.borderColor = UIColor.black.cgColor
        }
    }
 
    // if cell is panned across, change its color
    @IBAction func flagPanGR(_ sender: UIPanGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.began {
            touchedCells = []
        }
        
        let panLocation = sender.location(in: flagCollectionView)
        
        for cell in flagCollectionView.visibleCells as [UICollectionViewCell] {
            if !touchedCells.contains(cell) && cell.frame.contains(panLocation) {
                touchedCells.append(cell)
            }
        }
        
        if sender.state == UIGestureRecognizer.State.ended && touchedCells.isEmpty == false {
            for cell in touchedCells {
                if cell.backgroundColor != selectedColorView.backgroundColor {
                    cell.backgroundColor = selectedColorView.backgroundColor
                }
            }
        }
    }
    
    // if cell is tapped, change its color
    @IBAction func flagTapGR(_ sender: UITapGestureRecognizer) {
        let tapLocation = sender.location(in: flagCollectionView)
        
        if sender.state == UIGestureRecognizer.State.ended {
            for cell in flagCollectionView.visibleCells as [UICollectionViewCell] {
                if cell.frame.contains(tapLocation) && cell.backgroundColor != selectedColorView.backgroundColor  {
                        cell.backgroundColor = selectedColorView.backgroundColor
                }
            }
        }
    }
    
    // if color in color table is tapped, set that color to new selected color
    @IBAction func tapColorTableGR(_ sender: UITapGestureRecognizer) {
        let tapLocation = sender.location(in: colorTable)
        
        let colorOptions:[UIView] = [firstColorView, secondColorView, thirdColorView]
        
        if sender.state == UIGestureRecognizer.State.ended {
            for color in colorOptions as [UIView] {
                if color.frame.contains(tapLocation) {
                    selectColor(colorView: color)
                }
            }
        }
        
    }
    
    // generates a new random flag and refreshes the view
    @IBAction func newProblemBtn(_ sender: Any) {
        var newFlag = FlagRepository.flagRepository.flags.randomElement()!
        while problemFlag.runLengthEncoding == newFlag.runLengthEncoding {
            newFlag = FlagRepository.flagRepository.flags.randomElement()!
        }
        problemFlag = newFlag
        setupVC()
        flagCollectionView.reloadData()
    }
    
    // evaluates if the decoded flag entered is correct
    @IBAction func checkAnswerBtn(_ sender: Any) {
        var title:String = "Correct!"
        var message:String = "The flag's country is \(problemFlag.country)"

        for i in 0..<problemFlag.decodedFlag.count {
            let cell = flagCollectionView.cellForItem(at: IndexPath(row: i, section: 0))!
            if cell.backgroundColor != problemFlag.decodedFlag[i] {
                title = "Incorrect"
                message = "Try again!"
                break
            }
        }

        display(title: title, message: message)
    }
    
    // Displays a UIAlert with title and message
    func display(title:String, message:String){
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

// use delegates and datasource to set up flag layout for collection view
extension DecodeThisFlagViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return problemFlag.decodedFlag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath)
        
        // use if you want to view the flags
        //cell.backgroundColor = problemFlag.decodedFlag[indexPath.row]
        cell.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
}
