//
//  FieldObservationViewController.swift
//  Field Survey
//
//  Created by Leo Kim on 7/21/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

class FieldObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var fieldObservationTableView: UITableView!
    
    let dateFormatter = DateFormatter()
    
    let fieldObservations = FieldSurveyJSONLoader.load(fileName: "field_observations")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldObservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)
        cell.selectionStyle = .none
        
        if let cell = cell as? FieldObservationTableViewCell {
            let fieldObservation = fieldObservations[indexPath.row]
            cell.fieldIcon.image = fieldObservation.classification.image
            cell.fieldTitleLabel.text = fieldObservation.title
            cell.fieldDateLabel.text = dateFormatter.string(from: fieldObservation.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController,
            let row = fieldObservationTableView.indexPathForSelectedRow?.row{
            
            destination.fieldObservation = fieldObservations[row]
        }
    }
}
