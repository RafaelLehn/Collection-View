//
//  ViewController.swift
//  Collection View 1
//
//  Created by Evolua Tech on 24/08/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    var listaDeNomes = ["Miguel", "Manuella", "André"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .black
        
    }
    
    func AdicionarNomes() {
        listaDeNomes.append("Laura")
        listaDeNomes.append("José")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaDeNomes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as! MainCollectionViewCell
        cell.setupCell(name: listaDeNomes[indexPath.item])
        cell.contentView.backgroundColor = .red
        return cell
        
    }
    
    
}

