//
//  PosterCell.swift
//  Flix
//
//  Created by Jangey Lu on 9/10/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet{
            //let title = movie.title
            //let overview = movie.overview
            let posterPathString = movie.posterPath
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURL = URL(string: baseURLString + posterPathString)!
            //titleLabel.text = title
            //overviewLable.text = overview
            posterImageView.af_setImage(withURL: posterURL)
        }
    }
}
