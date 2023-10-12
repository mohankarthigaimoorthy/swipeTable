//
//  ViewController.swift
//  tableViewSwipe
//
//  Created by Imcrinox Mac on 22/12/1444 AH.
//

import UIKit

class ViewController: UITableViewController {

    var datas = [
    profile(image: "1", name: "mohan"),
    profile(image: "2", name: "mani"),
    profile(image: "3", name: "ram doss"),
    profile(image: "4", name: "kavin"),
    profile(image: "5", name: "Kathir"),
    profile(image: "6", name: "sharuk ferkin"),
    profile(image: "7", name: "meer annezudeen"),
    profile(image: "8", name: "ganesh"),
    profile(image: "9", name: "raja"),
    profile(image: "10", name: "deva")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "swipePatternTableViewCell", for: indexPath) as! swipePatternTableViewCell
        let profile = datas[indexPath.row]
        
        cell.profileImg.image = UIImage(named: profile.image)
        cell.profileNameLbl.text = profile.name
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//
//        let delete = UITableViewRowAction(style: .normal, title: "🗑\nDelete") {action, index in
//            print("delete btn tapped")
//        }
//        delete.backgroundColor = UIColor.cyan
//
//        let share = UITableViewRowAction(style: .normal, title: "⋊\nShare"){
//            (action,indexPath) in
//            let firstActivityItem = self.datas[indexPath.row]
//            let activityViewController = UIActivityViewController(activityItems: [firstActivityItem.image as NSString], applicationActivities: nil)
//
//            self.present(activityViewController,animated: true,completion: nil)
//        }
//        share .backgroundColor = UIColor.red
//
//        let download = UITableViewRowAction(style: .normal, title: "⬇️\nDownload") { action, index in
//            print("download btn tapped")
//        }
//        download.backgroundColor = UIColor.blue
//
//        return [download, share, delete]
//    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
     {
         let deleteAction = UIContextualAction(style: .destructive, title: "🗑\nDelete") { (action, view, handler) in
             print("Delete Action Tapped")
         }
         deleteAction.backgroundColor = .cyan
         
         let shareAction =
         UIContextualAction(style: .normal, title: "⋊\nShare"){ (action, view, handler) in
             let firstActivityItem = self.datas[indexPath.row]
             let activityViewController = UIActivityViewController(activityItems: [firstActivityItem.image as NSString], applicationActivities: nil)
             
             self.present(activityViewController,animated: true,completion: nil)
             print("download btn tapped")

         }
         
         shareAction.backgroundColor = .systemMint
        
         
         let downloadAction = UIContextualAction(style: .normal, title: "⬇️\nDownload"){ (action, view, handler) in
             print("download btn tapped")
             
         }
         downloadAction.backgroundColor = .darkGray
         let configuration = UISwipeActionsConfiguration(actions: [deleteAction,shareAction,downloadAction])
                 return configuration

     }

    override  func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
         {
             let deleteAction = UIContextualAction(style: .destructive, title: "🗑\nDelete") { (action, view, handler) in
                 print("Delete Action Tapped")
             }
             deleteAction.backgroundColor = .cyan
             
             let shareAction =
             UIContextualAction(style: .normal, title: "⋊\nShare"){ (action, view, handler) in
                 let firstActivityItem = self.datas[indexPath.row]
                 let activityViewController = UIActivityViewController(activityItems: [firstActivityItem.image as NSString], applicationActivities: nil)
                 
                 self.present(activityViewController,animated: true,completion: nil)
                 print("download btn tapped")

             }
             
             shareAction.backgroundColor = .systemMint
            
             
             let downloadAction = UIContextualAction(style: .normal, title: "⬇️\nDownload"){ (action, view, handler) in
                 print("download btn tapped")
                 
             }
             downloadAction.backgroundColor = .darkGray
             let configuration = UISwipeActionsConfiguration(actions: [deleteAction,shareAction,downloadAction])
                     return configuration

         }
     
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle{
        case .delete :
            print("Delete")
        case .insert:
            print("Insert")
        case .none:
            print("None")
        }
    }
    
 
}

