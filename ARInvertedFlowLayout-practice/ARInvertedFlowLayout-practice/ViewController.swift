//
//  ViewController.swift
//  ARInvertedFlowLayout-practice
//
//  Created by AbdulRehman Warraich on 9/13/19.
//  Copyright © 2019 ar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView : UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.transform = CGAffineTransform(scaleX: 1, y: -1)
    }
    
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width/2) - 8, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell : DemoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCell", for: indexPath) as? DemoCell {
            
            cell.titleLabel?.text = "\(indexPath.item + 1)"
            
            return cell
        }
        return UICollectionViewCell()
    }
    
}
