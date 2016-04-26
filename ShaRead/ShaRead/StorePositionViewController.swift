//
//  StorePositionViewController.swift
//  ShaRead
//
//  Created by martin on 2016/4/25.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import UIKit

class StorePositionViewController: UIViewController {

    @IBOutlet weak var positionTableView: UITableView!
    @IBOutlet weak var inputLengthLabel: UILabel!

    let maxInputLength: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLengthLabel.text = "(0 / \(maxInputLength))"

        if let headerView = positionTableView.tableHeaderView {
            headerView.frame.size.height = 0
        }
        
        positionTableView.rowHeight = UITableViewAutomaticDimension
        positionTableView.estimatedRowHeight = 20
        
        if let footerView = positionTableView.tableFooterView {
            footerView.frame.size.height = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dismissKeyboard(sender: AnyObject) {
        self.view.endEditing(true)
    }

    @IBAction func endOnExit(sender: AnyObject) {
        self.resignFirstResponder()
    }

    @IBAction func inputEditingChanged(sender: AnyObject) {

        if let textField = sender as? UITextField, text = textField.text {
            let length = text.characters.count
            
            if length <= maxInputLength {
                inputLengthLabel.text = "(\(length) / \(maxInputLength))"
            } else {
                textField.text = String(text.characters.dropLast())
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func navBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}

extension StorePositionViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(indexPath.row == 0 ? "MRTCell" : "ExitCell", forIndexPath: indexPath)

        return cell
    }
}