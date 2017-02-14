//
//  ListViewController2.swift
//  Paper
//
//  Created by cscoi005 on 2017. 2. 14..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit
import SWXMLHash

class ListViewController2: UITableViewController {
    
    var page = 1
    var totalcount2 = 0
    
    lazy var list : [PaperVO] = {
        var datalist = [PaperVO]()
        return datalist
    }()
    
    override func viewDidLoad() {
        
        self.callPaperAPI()
        
    }
    
    
    func callPaperAPI(){
        let url = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00na481a&version=1.0&type=O&keyword=Smartphone&rsnum=\(self.page)"
        let urlwithPercentEscapes = url.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
        let apiURI : URL! = URL(string: urlwithPercentEscapes!)
        
        
        do {
            let apidata = try! Data(contentsOf: apiURI)
            let xml = SWXMLHash.parse(apidata)
            let totalcount = xml["record"]["head"]["totalcount"].element?.text
            totalcount2 = Int(totalcount!)!
            
            
            
            for row in 0...9 {
                
                if row-1 == Int(totalcount!)!-self.page{
                    break
                }
                
                let r = xml["record"]["metadata"][row]
                let pvo = PaperVO()
                pvo.title = r["riss.title"].element?.text
                pvo.author = r["riss.author"].element?.text
                
                self.list.append(pvo)
                
            }
            
        }
        catch{
            NSLog("Parse Error!!")
            
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.list.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.list[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! PaperCell
        
        cell.Title?.text = row.title
        cell.Author?.text = row.author
        
        
        
        
        
        // Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if(tableView.contentOffset.y >= (tableView.contentSize.height - tableView.frame.size.height) && totalcount2-self.page>=10) {
            self.page += 10
            self.callPaperAPI()
            self.tableView.reloadData()
            NSLog("\(self.page)")
            
            
        }
        
    }
    
    
}
