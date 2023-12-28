//
//  ImagesCollectionViewCell.swift
//  CoreDataAdvanceConcepts
//
//  Created by Ram on 28/12/23.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var selectedImage: UIImageView!
    
    func setIntialUI(person: String = "person.circle.fill", selected: Bool = false) {
        personImage.image = UIImage(systemName: person)
        selectedImage.isHidden = !selected
    }
    
}
