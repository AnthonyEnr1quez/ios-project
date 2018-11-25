//
//  CreateThisFlagViewController.swift
//  IOS Project
//
//  Created by ant on 11/20/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

private let cellReuseId = "pixel"

class CreateThisFlagViewController: UIViewController {
    
    @IBOutlet weak var flag: UICollectionView!
    
    var touchedCells:[UICollectionViewCell]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
 
    // if cell is panned across, change its color
    @IBAction func panGR(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == UIGestureRecognizer.State.began {
            touchedCells = []
        }
        
        let panLocation = sender.location(in: self.view)
        print(panLocation)
        
        for cell in flag.visibleCells as [UICollectionViewCell] {
            let convertedLocation = self.view.convert(cell.frame, from:flag)
            if !touchedCells.contains(cell) && convertedLocation.contains(panLocation) {
                touchedCells.append(cell)
                print("Touched")
            }
        }
        
        if sender.state == UIGestureRecognizer.State.ended && touchedCells.isEmpty == false {
            for cell in touchedCells {
                print(cell)
                if cell.backgroundColor == .black {
                    cell.backgroundColor = .red
                } else {
                    cell.backgroundColor = .black
                }
            }
        }
        
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
extension CreateThisFlagViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 135
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath)
        cell.backgroundColor = .black
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 25, height: 25)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    }
    
}
