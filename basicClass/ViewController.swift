//
//  ViewController.swift
//  basicClass
//
//  Created by 이진규 on 7/30/24.
//
import UIKit
class ViewController: UIViewController {
  let helloLabel = UILabel()
  let button1: UILabel = {
    let label = UILabel()
    label.text = "1"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let button2: UILabel = {
    let label = UILabel()
    label.text = "2"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let button3: UILabel = {
    let label = UILabel()
    label.text = "3"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  let blueView = UIView()
//  let myNameButton: UIButton = {
//      let button = UIButton(type: .system)
//      button.translatesAutoresizingMaskIntoConstraints = false
//      button.setTitle("Press Me", for: .normal)
//      button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//      return button
//    }()
  let myStackView: UIStackView = {
    let stackView = UIStackView(frame: .zero)
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.alignment = .center
    stackView.distribution = .fillEqually
    stackView.backgroundColor = .yellow
    return stackView
  }()
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
    // 1
    view.addSubview(helloLabel)
    // 2
    helloLabel.translatesAutoresizingMaskIntoConstraints = false
    // 3
    NSLayoutConstraint.activate([
      helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      helloLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
    ])
//    myNameButton.backgroundColor = .blue
//
//    view.addSubview(myNameButton)
    view.addSubview(myStackView)
    myStackView.addArrangedSubview(button1)
    myStackView.addArrangedSubview(button2)
    myStackView.addArrangedSubview(button3)
    NSLayoutConstraint.activate([
      myStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      myStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//      myStackView.topAnchor.constraint(equalTo: view.topAnchor),
//      myStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      myStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      myStackView.heightAnchor.constraint(equalToConstant: 250)
    ])
//    NSLayoutConstraint.activate([
//      myNameButton.bottomAnchor.constraint(equalTo: helloLabel.topAnchor, constant: -150),
//      myNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//      myNameButton.widthAnchor.constraint(equalToConstant: 100),
//      myNameButton.heightAnchor.constraint(equalToConstant: 40)
//    ])
  }
  // Action for the button tap
  @objc func buttonTapped() {
    helloLabel.text = "Leeo"
  }
}
