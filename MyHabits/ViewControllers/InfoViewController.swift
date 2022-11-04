//
//  InfoViewController.swift
//  MyHabits
//
//  Created by MacBook Air on 01.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "dBackground")
        self.navigationItem.title = "Информация"
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0
        let firstString = NSAttributedString(string: "Привычка за 21 день\n\n", attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.paragraphStyle:paragraphStyle])
        let secondString = NSAttributedString(string: "иоаыдовиаолвисививрситяисловыисловислвисриьсиьятчисьячислисыисивысиысивисисисиисисисиыврисивысивсиывисыисвисисивысивысивсивыс",
                                              attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17), NSAttributedString.Key.paragraphStyle:paragraphStyle])
        let result = NSMutableAttributedString()
        result.append(firstString)
        result.append(secondString)
        
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.attributedText = result
        textView.textAlignment = .left
        
        self.view.addSubview(textView)
        
        textView.textContainerInset = UIEdgeInsets(top: 22, left: 16, bottom: 0, right: 16)
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}
