//
//  AddEditViewController.swift
//  MyGames
//
//  Created by Rennan Bruno on 16/02/22.
//

import UIKit

class AddEditViewController: UIViewController {
    
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Game!

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func addEditCover(_ sender: UIButton) {
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
        if game == nil {
            game = Game(context: context)
        }
        game.title = tfTitle.text
        game.releaseDate = dpReleaseDate.date
        do{
        try context.save()
        } catch {
            print(error.localizedDescription)
        }
        
        navigationController?.popViewController(animated: true)
    }

}
