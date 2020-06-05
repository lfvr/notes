//
//  NoteViewController.swift
//  Notes
//
//  Created by Lauren Minchin on 05/06/2020.
//  Copyright © 2020 Lauren Minchin. All rights reserved.
//

import Foundation
import UIKit

class NoteViewController: UIViewController {
    var note: Note!
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note.contents
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        note.contents = textView.text
        NoteManager.main.save(note: note)
    }
}

