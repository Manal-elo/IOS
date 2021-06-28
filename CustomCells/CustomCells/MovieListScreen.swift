//
//  MovieListScreen.swift
//  CustomCells
//
//  Created by Manal El Ouardani on 27/6/2021.
//

import UIKit

class MovieListScreen: UIViewController {
   
    @IBOutlet weak var TableView: UITableView!
    var movies: [Movie] = []
    

     
    override func viewDidLoad() {
        super.viewDidLoad()
        movies = createArray()
        
    }
    
    func createArray() -> [Movie] {
        
        var tempMovies: [Movie] = []
        
        let movie1 = Movie(image:UIImage(named: "everis.png")! , title: "1")
        let movie2 = Movie(image:UIImage(named: "uplo.png")! , title: "2")
        let movie3 = Movie(image:UIImage(named: "EVER2.png")! , title: "3")
        
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
      
        
        return tempMovies
    }

}

extension MovieListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
        
        cell.setMovie(movie: movie)
        return cell
    }
    
}
