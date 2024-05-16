//
//  ViewController.swift
//  collVIew
//
//  Created by ilamparithi mayan on 08/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collView: UICollectionView!
    
  var img: [String] = ["ak2","Darling2","Pallavi"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collView.delegate = self
        collView.dataSource = self
        collView.collectionViewLayout = UICollectionViewFlowLayout()
    }


}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.green.cgColor
        cell.imgView.image = UIImage(named: img[indexPath.row])
        
       return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let size = (collectionView.frame.size.width-10)/2
            return CGSize(width: size, height: size)

}




}
