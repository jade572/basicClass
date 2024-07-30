//
//  ViewController.swift
//  basicClass
//
//  Created by 이진규 on 7/30/24.
//

import UIKit
class ViewController: UIViewController {
  let helloLabel = UILabel()
  let blueView = UIView()
  let myNameButton = UIButton()
  let temp = UITableView()
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .systemPink
    configureView()
  }
  override func viewWillAppear(_ animated: Bool) {
    view.backgroundColor = .red
  }
  func configureView() {
    helloLabel.text = "Hello, World"
    //
    view.addSubview(helloLabel)
    // 2
    helloLabel.translatesAutoresizingMaskIntoConstraints = false
    // 3
    NSLayoutConstraint.activate([
      helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      helloLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
    ])
    blueView.backgroundColor = .blue
    view.addSubview(blueView)
    blueView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      blueView.bottomAnchor.constraint(equalTo: helloLabel.topAnchor, constant: -150),
      blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      blueView.widthAnchor.constraint(equalToConstant: 100),
      blueView.heightAnchor.constraint(equalToConstant: 40)
    ])
  }
}
