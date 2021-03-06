//
//  AddCommentsViewController.swift
//  Project33
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import UIKit

class AddCommentsViewController: UIViewController, UITextViewDelegate {
	var genre: String!

	var comments: UITextView!
	let placeholder = "If you have any additional comments that might help identify your tune, enter them here."

	override func loadView() {
		super.loadView()

		comments = UITextView()
		comments.translatesAutoresizingMaskIntoConstraints = false
		comments.delegate = self
		comments.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
		view.addSubview(comments)

		comments.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		comments.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		comments.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		comments.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "Comments"
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(submitTapped))
		comments.text = placeholder
	}

	@objc func submitTapped() {
		let vc = SubmitViewController()
		vc.genre = genre

		if comments.text == placeholder {
			vc.comments = ""
		} else {
			vc.comments = comments.text
		}

		navigationController?.pushViewController(vc, animated: true)
	}

	func textViewDidBeginEditing(_ textView: UITextView) {
		if textView.text == placeholder {
			textView.text = ""
		}
	}
}
