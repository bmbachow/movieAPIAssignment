//
//  MovieViewController.swift
//  movieAPIAssignment
//
//  Created by Brian Bachow on 2/11/22.
//

import UIKit

class MovieViewController: UIViewController {

    let vm = MovieViewModel.init()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        vm.getData {
            let error = self.vm.getError()
            if error == nil {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }

    }

}

extension MovieViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.getCount()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        let movie = vm.getMovie(index: indexPath.row)
        cell.textLabel?.text = movie.title
        return cell
    }
    
    
}
