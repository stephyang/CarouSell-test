//
//  Registration.swift
//  CarouSell-test
//
//  Created by stephanie yang on 2016/4/7.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class Registration: UIViewController, UIScrollViewDelegate {
    
    private let PageCellreuseIdentifier = "PageCollectionViewCell"
    
    @IBOutlet weak var tutorialCollectionView: UICollectionView!
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var loginWithEmailButton: UIButton!
    
    
    let pages = [[Constants.image: "photo4", Constants.title: "coffee", Constants.description: "I love it"],[Constants.image: "photo5", Constants.title: "work", Constants.description: "I love it"],[Constants.image: "photo6", Constants.title: "latte", Constants.description: "I love it"]]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        self.tutorialCollectionView.registerNib(UINib(nibName: "PageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: PageCellreuseIdentifier)
        
        self.layout.itemSize = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height-150)
        
        
        self.pageControl.numberOfPages = self.pages.count
        
        self.loginWithEmailButton.layer.cornerRadius = 5
        
        let buttontitle = NSMutableAttributedString(string: "Sign up or Log in with ")
        let boldEmail = NSMutableAttributedString(string: "Email ", attributes:[NSFontAttributeName: UIFont.boldSystemFontOfSize(18.0)])
        buttontitle.appendAttributedString(boldEmail)
        self.loginWithEmailButton.setAttributedTitle(buttontitle, forState: .Normal)
        
        
    
    }
// 讓每換一個畫面，pagecontrol下面的點會跟著移動（這是UIScrollViewDelegate 的func所以選告UIScrollViewDelegate完直接做）
// round
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNum = round(scrollView.contentOffset.x/UIScreen.mainScreen().bounds.width)
        self.pageControl.currentPage = Int(pageNum)
    }
    
    
//讓pagecontrol下面的點可以換頁
    @IBAction func pageChanged(sender: AnyObject) {
        let x = CGFloat(pageControl.currentPage) * self.tutorialCollectionView.frame.size.width
        self.tutorialCollectionView.setContentOffset(CGPointMake(x, 0),animated: true)
        
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
        return self.pages.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(PageCellreuseIdentifier, forIndexPath: indexPath) as! PageCollectionViewCell
        let page = pages[indexPath.item]
        
        cell.pageImageView.image = UIImage(named: page[Constants.image]!)
        cell.titleLabel.text = page[Constants.title]
        cell.descriptionLabel.text = page[Constants.description]
        
        return cell
        
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