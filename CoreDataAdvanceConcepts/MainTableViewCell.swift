//
//  MainTableViewCell.swift
//  CoreDataAdvanceConcepts
//
//  Created by Ram on 28/12/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var setButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(person: PersonData?) {
        setUiCompenents()
        personImage.image = UIImage(systemName: person?.image ?? "person.circle.fill")
        personName.text = person?.name 
    }
    
    func setUiCompenents() {
        setButton.layer.borderWidth = 1
        setButton.layer.cornerRadius = 10
    }
}
