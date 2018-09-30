//
//  MovieCell.swift
//  Flix
//
//  Created by Jangey Lu on 9/1/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLable: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet{
            let title = movie.title
            let overview = movie.overview
            let posterPathString = movie.posterPath
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURL = URL(string: baseURLString + posterPathString)!
            titleLabel.text = title
            overviewLable.text = overview
            posterImageView.af_setImage(withURL: posterURL)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
