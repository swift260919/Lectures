//
//  TvCollectionViewcontrollerCollectionViewController.swift
//  Lec9
//
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit
import SDWebImage

private let reuseIdentifier = "cell"

class TvCollectionViewcontrollerCollectionViewController: UICollectionViewController, TMDBListener {

    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TMDBDataSource(endPoint: .discoverMovies).sendRequest(listener: self)
    }

    func displayMovies(_ movies: [Movie]){
        self.movies = movies
        print(movies)
        collectionView.reloadData()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return movies.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TVCollectionViewCell
        
        let movie = movies[indexPath.item]
        // Configure the cell
        cell.nameLabel.text = movie.title
        //cell.posterImageView.image
        
        //bind the image:
        if movie.poster_path.count > 1{
            let url = URL(string: movie.poster)!
            
            //imageView.sd_setImage(with:url)
            cell.posterImageView.sd_setImage(with: url)
        }
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
extension TvCollectionViewcontrollerCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionViewSize = collectionView.frame.size
        let colHeight = collectionViewSize.height
        let colWidth = collectionViewSize.width
        
        
        return CGSize(width: 200, height: 200)
    }
}
