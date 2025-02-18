//
//  ViewController.swift
//  ToDoApp
//
//  Created by Hemanth Kumar on 18/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var prioritySegmentControl: UISegmentedControl!
    
    @IBOutlet weak var taskTableView: UITableView!
    
    private var mainViewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainViewModel = MainViewModel.shared
        taskTableView.delegate = self
        taskTableView.dataSource = self
        prioritySegmentControl.selectedSegmentIndex = 1
    }

    @IBAction func onPriorityChanged(_ sender: UISegmentedControl) {
        
        print("onPriorityChanged: \(sender.selectedSegmentIndex)")
        
    }
    
    @IBAction func onSaveClicked(_ sender: UIButton) {
        print("onSaveClicked")
    }
    
    
}

