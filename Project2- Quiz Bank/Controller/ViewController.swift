//
//  ViewController.swift
//  Project2- Quiz Bank
//
//  Created by suhail on 07/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblScore: UILabel!
    @IBOutlet var lblQuestion: UILabel!
    @IBOutlet var btnFalse: UIButton!
    @IBOutlet var btnTrue: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var lblWrong: UILabel!
    
    var timer = Timer()
    var quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        let questionSet = QuestionSet().questions
        quizManager.questions = questionSet.shuffled()
        
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.black.cgColor,UIColor.systemMint.cgColor,UIColor.black.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
        
        giveBordersAndCOrners()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        
        guard let currentAnswer = sender.titleLabel?.text else { return }
        
        let whatUserGot = quizManager.checkAnswer(selectedAnswer: currentAnswer)
        if whatUserGot{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizManager.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(checkUI), userInfo: nil, repeats:false)
        
    }
}
extension ViewController{
    func giveBordersAndCOrners(){
        
        btnTrue.layer.borderColor = UIColor.white.cgColor
        btnTrue.layer.borderWidth = 1
        btnTrue.layer.cornerRadius = 20
       

        btnFalse.layer.borderColor = UIColor.white.cgColor
        btnFalse.layer.borderWidth = 1
        btnFalse.layer.cornerRadius = 20
      
    }
    
    @objc func checkUI(){
    
        if !quizManager.gameOver{
           updateUI()
        }else{
            let ac = UIAlertController(title: "Game Over", message: "Please press oK if you want to start again", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default,handler: { [weak self] _ in
                self?.quizManager.gameOver = false
                self?.quizManager.questions.shuffle()
                self?.updateUI()
            }))
            present(ac,animated: true)
        }
   
    }
    
    func updateUI(){
        progressBar.progress = quizManager.getCurrentProgress()
        lblQuestion.text = quizManager.fetchQuestion()
        btnTrue.backgroundColor = .clear
        btnFalse.backgroundColor = .clear
        lblScore.text = "Score: \(quizManager.score)"
        lblWrong.text = "Wrong: \(quizManager.wrong)"
        
    }
}

