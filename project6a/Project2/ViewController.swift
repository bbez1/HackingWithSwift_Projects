//
//  ViewController.swift
//  Project2
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import GameplayKit
import UIKit

class ViewController: UIViewController {
	@IBOutlet var button1: UIButton!
	@IBOutlet var button2: UIButton!
	@IBOutlet var button3: UIButton!

	var countries = [String]()
	var correctAnswer = 0
	var score = 0

	override func viewDidLoad() {
		super.viewDidLoad()

		button1.layer.borderWidth = 1
		button2.layer.borderWidth = 1
		button3.layer.borderWidth = 1

		button1.layer.borderColor = UIColor.lightGray.cgColor
		button2.layer.borderColor = UIColor.lightGray.cgColor
		button3.layer.borderColor = UIColor.lightGray.cgColor

		countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
		askQuestion()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func askQuestion(action: UIAlertAction! = nil) {
		countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]

		button1.setImage(UIImage(named: countries[0]), for: .normal)
		button2.setImage(UIImage(named: countries[1]), for: .normal)
		button3.setImage(UIImage(named: countries[2]), for: .normal)

		correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
		title = countries[correctAnswer].uppercased()
	}

	@IBAction func buttonTapped(_ sender: UIButton) {
		var title: String

		if sender.tag == correctAnswer {
			title = "Correct"
			score += 1
		} else {
			title = "Wrong"
			score -= 1
		}

		let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
		ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
		present(ac, animated: true)
	}

}

