//
//  FieldObservationDetailViewController.swift
//  Field Survey
//
//  Created by Leo Kim on 7/21/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {

    var fieldObservation: FieldObservation?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldDescriptionTextView: UITextView!
    @IBOutlet weak var fieldDateLabel: UILabel!
    @IBOutlet weak var fieldTitleLabel: UILabel!
    @IBOutlet weak var fieldImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Observation"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        fieldImage.image = fieldObservation?.classification.image
        fieldTitleLabel.text = fieldObservation?.title
        fieldDescriptionTextView.text = fieldObservation?.description
        
        if let date = fieldObservation?.date {
            fieldDateLabel.text = dateFormatter.string(from: date)
        } else {
            fieldDateLabel.text = ""
        }
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

}
