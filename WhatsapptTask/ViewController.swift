//
//  ViewController.swift
//  WhatsapptTask
//
//  Created by kamal agarwal on 09/03/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var SegCtrl: UISegmentedControl!
    
    @IBOutlet weak var tv: UITableView!
    
    
    let status = ["","Recent updates","Viewed updates"]
    
    let namearr = ["Farhana","Neha","Kamal","Harishta","Ashweta","Rohan","Zayn","Gaurav","Mom","Dad","Uncle","Aunty"]
    
    let  msg = ["Hi","Hello","How Are you","Where you being","hey","Bye","Bye","Take Care","Goodnight","Good Morning","C ya","Hi"]
    
    let time = ["17:55","05:06","13:19","18:12","03:10","12:59","06:01","19:08","06:01","10:19","Yesterday","12/03/2021"]
    
    let img = ["11","2","4","5","6","7","8","9","10","9","5","2"]
    
    let CVimg = ["call","videocall","videocall","call","call","videocall","videocall","call","videocall","videocall","call","videocall"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if SegCtrl.selectedSegmentIndex == 1{
            
            if section == 0{
                return 1
            }
            if section == 1{
                return namearr.count
            }
            if section == 2{
                return namearr.count
            }
        
        }
        return namearr.count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if SegCtrl.selectedSegmentIndex == 1{
            return status.count
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        if SegCtrl.selectedSegmentIndex == 0
        {
            cell.Addimg.isHidden = true
            cell.Dpimg.image = UIImage(named: "\(img[indexPath.row])")
            cell.Dpimg.layer.cornerRadius = 25
            cell.NameLbl.text = "\(namearr[indexPath.row])"
            cell.DescLbl.text = "\(msg[indexPath.row])"
            cell.TimeLbl.text = "\(time[indexPath.row])"
            cell.TimeLbl.isHidden = false
            cell.img1.isHidden = true
        }
        
        if SegCtrl.selectedSegmentIndex == 1
        {
            cell.Addimg.isHidden = true
            cell.TimeLbl.isHidden = true
            cell.Dpimg.image = UIImage(named: "\(img[indexPath.row])")
            cell.NameLbl.text = "\(namearr[indexPath.row])"
            cell.DescLbl.text = "\(time[indexPath.row])"
            cell.img1.isHidden = true
            
            if indexPath.section == 0{
                
                cell.Addimg.isHidden = false
                cell.Addimg.layer.cornerRadius = 10
                cell.Addimg.clipsToBounds = true
                
                cell.Dpimg.image = UIImage(named: "11")
                cell.Dpimg.layer.cornerRadius = 25
        
                cell.NameLbl.text = "My status"
                cell.DescLbl.text = "Tap to add status update"
            }
            
            if indexPath.section == 1{
                
                cell.Dpimg.image = UIImage(named: "\(img[indexPath.row])")
                cell.NameLbl.text = "\(namearr[indexPath.row])"
                cell.DescLbl.text = "\(time[indexPath.row])"
                
            }
            
            if indexPath.section == 2{
                cell.Dpimg.image = UIImage(named: "\(img[indexPath.row])")
                cell.NameLbl.text = "\(namearr[indexPath.row])"
                cell.DescLbl.text = "\(time[indexPath.row])"
                }
        }
    
        if SegCtrl.selectedSegmentIndex == 2
        {
            cell.Addimg.isHidden = true
            cell.TimeLbl.isHidden = true
            cell.Dpimg.image = UIImage(named: "\(img[indexPath.row])")
            cell.NameLbl.text = "\(namearr[indexPath.row])"
            cell.DescLbl.text = "\(time[indexPath.row])"
            cell.img1.isHidden = false
            cell.img1.image = UIImage(named: "\(CVimg[indexPath.row])")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        let header = tableView.dequeueReusableCell(withIdentifier: "HeaderTVC") as! HeaderTVC
        
        header.HeaderLbl.text = "\(status[section])"
        
        if SegCtrl.selectedSegmentIndex == 0 {
            header.isHidden = true
            return header
        }
        if SegCtrl.selectedSegmentIndex == 1
        {
            if section == 0
            {
                header.isHidden = true
                return header
            }
            
        }
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0.1
        }
        return 35.0
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func SegAction(_ sender: Any) {
        tv.reloadData()
    }
    
    
}

