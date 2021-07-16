//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Wellington Alves on 08/07/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnsers = 0
    var totalAnswers = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Total corrected \(totalCorrectAnsers)")
        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnsers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnsers)"
        let score = (totalCorrectAnsers * 100) / totalAnswers
        lbScore.text = "\(score)%"
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
