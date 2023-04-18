//
//  ApiViewController.swift
//  Dream11
//
//  Created by Prince Desai on 27/03/23.
//

import UIKit

class ApiViewController: UIViewController {

    @IBOutlet weak var feedTabelView: UITableView!
    var arrUsers: [Dictionary<String, AnyObject>] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configerTabelView()
        getUsers()
    }
    
    private func configerTabelView(){
        feedTabelView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    private func getUsers() {
        guard let url = URL(string: "https://gorest.co.in/public/v2/users") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.httpBody = nil
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let apiData = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: apiData) as! [Dictionary<String, AnyObject>]
                self.arrUsers = json
                DispatchQueue.main.async {
                    self.feedTabelView.reloadData()
                }
            } catch  {
                print(error.localizedDescription)
            }
        }
        .resume()
    }

}
    
extension ApiViewController: UITableViewDelegate, UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FeedTableViewCell = FeedTableViewCell()
        let rowDictionary = arrUsers[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = "Name: \(rowDictionary["name"] as! String)\nId: \(rowDictionary["id"] as! Int)"
        return cell
    }
}
