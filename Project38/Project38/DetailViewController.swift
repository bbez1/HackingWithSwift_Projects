//
//  DetailViewController.swift
//  Project38
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	@IBOutlet var detailLabel: UILabel!
	var detailItem: Commit?

    override func viewDidLoad() {
        super.viewDidLoad()

		if let detail = self.detailItem {
			detailLabel.text = detail.message
			navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Commit 1/\(detail.author.commits.count)", style: .plain, target: self, action: #selector(showAuthorCommits))
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	@objc func showAuthorCommits() {
		// this is your homework!
	}
}
