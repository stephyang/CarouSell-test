//
//  Registration.swift
//  CarouSell-test
//
//  Created by stephanie yang on 2016/4/7.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class Registration: UIViewController {
    private let PageCellreuseIdentifier = "PageCollectionViewCell"
    @IBOutlet weak var tutorialCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        self.tutorialCollectionView.registerNib(UINib(nibName: "PageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: PageCellreuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
