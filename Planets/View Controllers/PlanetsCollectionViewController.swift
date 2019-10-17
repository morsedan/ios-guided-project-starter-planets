//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by morse on 10/17/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class PlanetsCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties

    let planetController = PlanetController()
    
    struct PropertyKeys {
        static let planetCell = "PlanetCell"
        
    }
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {
        collectionView.reloadData()
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PropertyKeys.planetCell, for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        return cell
    }
}
