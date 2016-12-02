//
//  ArticleViewController.swift
//  NYT-Quint-A
//
//  Created by Karen Fuentes on 12/1/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit
import expanding_collection

//extension ArticleViewController {
//    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return items.count
//    }
//    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellIdentifier"), forIndexPath: indexPath)
//        // configure cell
//        return cell
//    }
//}

class ArticleViewController: ExpandingViewController {

    override func viewDidLoad() {
        itemSize = CGSize(width: 214, height: 264)
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ArticleCollectionViewCell.xib", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "collectionViewCellID")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCellID", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
