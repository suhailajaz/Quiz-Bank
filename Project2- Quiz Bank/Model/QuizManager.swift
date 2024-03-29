//
//  QuizManager.swift
//  Project2- Quiz Bank
//
//  Created by suhail on 07/09/23.
//

import Foundation

struct QuizManager{
    
    var questionNumber = 0
    var score = 0
    var wrong = 0
    var gameOver = false
    var questions = [Question]()
//    var questions: [Question] =  [
//        Question(q: "A slug's blood is green.", a: "True"),
//        Question(q: "The honeybee is the only insect that produces food that we eat.", a: "True"),
//        Question(q: "The longest river in the world is the Nile.", a: "False"),
//        Question(q: "The Great Wall of China is not visible from space with the naked eye.", a: "True"),
//        Question(q: "The largest desert in the world is Antarctica.", a: "True"),
//        Question(q: "The speed of light in a vacuum is approximately 299,792,458 meters per second.", a: "True"),
//        Question(q: "Octopuses have three hearts.", a: "True"),
//        Question(q: "The Sahara Desert was once lush and green.", a: "True"),
//        Question(q: "The Venus flytrap is native to North Carolina.", a: "True"),
//        Question(q: "The Earth's inner core is solid, while the outer core is liquid.", a: "True"),
//        Question(q: "A day on Venus is longer than a year on Venus.", a: "True"),
//        Question(q: "A group of owls is called a parliament.", a: "True"),
//        Question(q: "The largest organ in the human body is the skin.", a: "True"),
//        Question(q: "The koala bear is not a bear; it is a marsupial.", a: "True"),
//        Question(q: "A female kangaroo is called a 'flyer.'", a: "False"),
//        Question(q: "The world's largest ocean is the Atlantic Ocean.", a: "False"),
//        Question(q: "Bananas are berries.", a: "True"),
//        Question(q: "The northern lights are also known as the Aurora Borealis.", a: "True"),
//        Question(q: "The chemical symbol for gold is 'Go.'", a: "False"),
//        Question(q: "The Eiffel Tower was originally intended to be a temporary structure.", a: "True"),
//        Question(q: "Cows have best friends.", a: "True"),
//        Question(q: "The original name of Bank of America was 'Bank of Italy.'", a: "True"),
//        Question(q: "The first computer programmer was Ada Lovelace.", a: "True"),
//        Question(q: "The Statue of Liberty was a gift from France to the United States.", a: "True"),
//        Question(q: "There are more atoms in a glass of water than there are glasses of water in all the world's oceans.", a: "True"),
//        Question(q: "A group of jellyfish is called a 'smack.'", a: "True"),
//        Question(q: "The shortest war in history was between Britain and Zanzibar on August 27, 1896, lasting 38 minutes.", a: "True"),
//        Question(q: "Hippopotamus sweat is red.", a: "False"),
//        Question(q: "The world's smallest mammal is the bumblebee bat.", a: "True"),
//        Question(q: "The only planet in our solar system that rotates clockwise is Venus.", a: "True"),
//        Question(q: "A group of porcupines is called a 'prickle.'", a: "True"),
//        Question(q: "The longest word in the English language without a vowel is 'rhythms.'", a: "False"),
//        Question(q: "A day on Mars is approximately 24 hours and 37 minutes long.", a: "True"),
//        Question(q: "The human brain uses about 20% of the body's total energy.", a: "True"),
//        Question(q: "The Great Barrier Reef is the largest living structure on Earth.", a: "True"),
//        Question(q: "There are more possible iterations of a game of chess than there are atoms in the known universe.", a: "True"),
//        Question(q: "The Pacific Ocean is the deepest ocean on Earth.", a: "True"),
//        Question(q: "The first recorded game of baseball was played in Hoboken, New Jersey, in 1846.", a: "True"),
//        Question(q: "The largest volcano in our solar system is on Mars and is called Olympus Mons.", a: "True"),
//        Question(q: "The world's largest desert is the Sahara Desert.", a: "False"),
//        Question(q: "The unicorn is the national animal of Scotland.", a: "True"),
//        Question(q: "The Amazon River is the longest river in the world.", a: "False"),
//        Question(q: "A group of rhinoceroses is called a 'crash.'", a: "True"),
//        Question(q: "The only planet in our solar system that rotates on its side is Uranus.", a: "True"),
//        Question(q: "The world's largest island is Greenland.", a: "True"),
//        Question(q: "A group of sloths is called a 'bed.'", a: "True"),
//        Question(q: "The longest word in the English language is 'pneumonoultramicroscopicsilicovolcanoconiosis.'", a: "True"),
//        Question(q: "A day on Mercury is longer than its year.", a: "True"),
//        Question(q: "A group of penguins in the water is called a 'raft.'", a: "True"),
//        Question(q: "Cleopatra was of Greek descent, not Egyptian.", a: "True"),
//        Question(q: "The world's smallest ocean is the Indian Ocean.", a: "False"),
//        Question(q: "The fastest land animal is the cheetah.", a: "True"),
//        Question(q: "The heaviest naturally occurring element is uranium.", a: "True"),
//        Question(q: "A group of crows is called a 'murder.'", a: "True"),
//        Question(q: "The tallest mountain on Earth is Mount Everest.", a: "True"),
//        Question(q: "The only mammal capable of sustained flight is the bat.", a: "True"),
//        Question(q: "The Panama Canal connects the Atlantic Ocean to the Pacific Ocean.", a: "True"),
//        Question(q: "A group of kangaroos is called a 'mob.'", a: "True"),
//        Question(q: "The fastest bird is the peregrine falcon.", a: "True"),
//        Question(q: "The human heart pumps about 2,000 gallons of blood per day.", a: "False"),
//        Question(q: "A group of wolves is called a 'pack.'", a: "True"),
//        Question(q: "A day on Pluto is shorter than a day on Earth.", a: "True"),
//        Question(q: "Hippopotamuses cannot swim.", a: "False"),
//        Question(q: "The smallest planet in our solar system is Pluto.", a: "False"),
//        Question(q: "A group of wolves is called a 'pack.'", a: "True"),
//        Question(q: "A day on Pluto is shorter than a day on Earth.", a: "True"),
//        Question(q: "Hippopotamuses cannot swim.", a: "False"),
//        Question(q: "The smallest planet in our solar system is Pluto.", a: "False"),
//        Question(q: "The Earth's atmosphere is composed mostly of nitrogen.", a: "True"),
//        Question(q: "Giraffes have the same number of neck vertebrae as humans.", a: "True"),
//        Question(q: "The Atlantic Ocean is the saltiest of all the oceans.", a: "False"),
//        Question(q: "The fastest land animal is the ostrich.", a: "False"),
//        Question(q: "The longest river in Asia is the Yangtze River.", a: "True"),
//        Question(q: "The smallest bird in the world is the bee hummingbird.", a: "True"),
//        Question(q: "The oldest continuously inhabited city in the world is Damascus, Syria.", a: "True"),
//        Question(q: "A group of kangaroos is called a 'mob.'", a: "True")
//    ].shuffled()
//
 
   func fetchQuestion()->String{
       return questions[questionNumber].text

    }
    
    mutating func checkAnswer(selectedAnswer: String)->Bool{
        if questions[questionNumber].answer == selectedAnswer{
            score += 1
           
            return true
        }else{
            wrong += 1
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber+1 < questions.count{
            questionNumber+=1
        }else{
            gameOver = true
            questionNumber = 0
            score = 0
            wrong = 0
        }
    }
    
    func getCurrentProgress()->Float{
      return  Float(questionNumber)/Float(questions.count)
    }
    
}
