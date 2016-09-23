    //
    //  RegisterEmailSignInTableViewController.swift
    //  CarouSell-test
    //
    //  Created by stephanie yang on 2016/4/17.
    //  Copyright © 2016年 stephanie yang. All rights reserved.
    //

    import UIKit

    class RegisterEmailSignInTableViewController: UITableViewController {
        @IBOutlet weak var segment: UISegmentedControl!
        var mode:SegmentSwitchMode = SegmentSwitchMode(rawValue:0)!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            self.tableView.registerNib(UINib(nibName: "RegisterUserTableViewCell",bundle: nil), forCellReuseIdentifier: "RegisterUserTableViewCell")
            
            self.tableView.registerNib(UINib(nibName: "RegisterImageTableViewCell",bundle: nil), forCellReuseIdentifier: "RegisterImageTableViewCell")
            
            tableView.estimatedRowHeight = 150.0
            tableView.rowHeight = UITableViewAutomaticDimension

            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false

            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        @IBAction func segmentSwitchMode(sender: AnyObject) {
            mode = SegmentSwitchMode(rawValue: segment.selectedSegmentIndex)!
            
            switch mode {
            case .Register:
                tableView.reloadData()
            case .SignIn:
                tableView.reloadData()
                
            
            }
        }
        
        
        // MARK: - Table view data source

        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            switch mode {
            case .Register:
                return 5
            case .SignIn:
                return 2
            }
        }

        
            override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                
                    switch mode {
                    case .Register:
                            switch indexPath.row {
                            case 0:
                              let cell = tableView.dequeueReusableCellWithIdentifier("RegisterImageTableViewCell", forIndexPath: indexPath) as! RegisterImageTableViewCell
                              cell.userImage.image = UIImage(named:"Camera100")
                              cell.userImage.contentMode = .ScaleAspectFill
                              return cell
                            
                            case 1:
                                let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                                cell.titleLabel.text = "使用者名稱"
                                cell.iconImage.image = UIImage(named:"user")
                                cell.frontLabel.placeholder = "輸入您要使用的名稱"
                                return cell
                                
                            case 2:
                                let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                                cell.titleLabel.text = "密碼"
                                cell.iconImage.image = UIImage(named:"Lock")
                                cell.frontLabel.placeholder = "輸入您的密碼"
                                return cell
                            case 3:
                                let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                                cell.titleLabel.text = "Email"
                                cell.iconImage.image = UIImage(named:"email-1")
                                cell.frontLabel.placeholder = "you@domain.com"
                                return cell
                                
                            case 4:
                                let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                                cell.titleLabel.text = "我的城市"
                                cell.iconImage.image = UIImage(named:"location")
                                cell.frontLabel.placeholder = "選擇城市"
                                return cell
                            default:
                                let cell = RegisterUserTableViewCell()
                                return cell

                                }
                        
                    case.SignIn:
                        switch indexPath.row {
                        case 0:
                            let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                            cell.titleLabel.text = "使用者名稱"
                            cell.iconImage.image = UIImage(named:"user")
                            cell.frontLabel.placeholder = "輸入您要使用的名稱"
                            return cell

                        case 1:
                            let cell = tableView.dequeueReusableCellWithIdentifier("RegisterUserTableViewCell", forIndexPath: indexPath) as! RegisterUserTableViewCell
                            cell.titleLabel.text = "密碼"
                            cell.iconImage.image = UIImage(named:"Lock")
                            cell.frontLabel.placeholder = "輸入您的密碼"
                            return cell
                            
                        default:
                            let cell = RegisterUserTableViewCell()
                            return cell
                            
                            }
                        
                            
                    }
                    
            
    }
}