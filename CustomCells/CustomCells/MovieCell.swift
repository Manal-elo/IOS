//
//  MovieCell.swift
//  CustomCells
//
//  Created by Manal El Ouardani on 27/6/2021.
//

import UIKit

class MovieCell: UITableViewCell {

   

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    func setMovie(movie: Movie){
        movieImageView.image = movie.image
        movieTitleLabel.text = movie.title
        
    }
    
}
