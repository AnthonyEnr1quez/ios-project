//
//  GIFInfoViewController.swift
//  IOS Project
//
//  Created by Anthony Enriquez on 10/18/18.
//  Copyright © 2018 vijay kumar. All rights reserved.
//

import UIKit

private let cellReuseId = "pixel"

class GIFInfoViewController: UIViewController {

    @IBOutlet weak var flagCollectionView: UICollectionView!
    @IBOutlet weak var firstColorView: UIView!
    @IBOutlet weak var secondColorView: UIView!
    @IBOutlet weak var thirdColorView: UIView!
    @IBOutlet weak var firstColorLabel: UILabel!
    @IBOutlet weak var secondColorLabel: UILabel!
    @IBOutlet weak var thirdColorLabel: UILabel!
    
    
    
    let hungaryFlag:Flag = FlagRepository.flagRepository[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstColorLabel.text = hungaryFlag.hexLabels[0]
        secondColorLabel.text = hungaryFlag.hexLabels[1]
        thirdColorLabel.text = hungaryFlag.hexLabels[2]
        
        firstColorView.backgroundColor = hungaryFlag.colors[0]
        secondColorView.backgroundColor = hungaryFlag.colors[1]
        thirdColorView.backgroundColor = hungaryFlag.colors[2]
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
extension GIFInfoViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hungaryFlag.decodedFlag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath)
        
        
        cell.backgroundColor = hungaryFlag.decodedFlag[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 30, height: 30)
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
