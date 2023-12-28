//
//  AddNewPersonViewController.swift
//  CoreDataAdvanceConcepts
//
//  Created by Ram on 28/12/23.
//

import UIKit

class AddNewPersonViewController: UIViewController {
    
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet weak var nameTextFeild: UITextField!
    
    let imagesList: [String] = ["hare.circle.fill", "tortoise.circle.fill", "bird.circle.fill", "dog.circle.fill", "graduationcap.circle.fill"]
    var selectedImage: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionOnSaveButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension AddNewPersonViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagesCollectionViewCell", for: indexPath) as! ImagesCollectionViewCell
        cell.setIntialUI(person: imagesList[indexPath.row], selected: indexPath.row == selectedImage)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedImage = indexPath.row
        imagesCollectionView.reloadData()
    }
}
