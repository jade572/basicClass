//
//  ViewController.swift
//  basicClass
//
//  Created by 이진규 on 7/30/24.
//

import UIKit
class ViewController: UIViewController {

    let helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, World"
        return label
    }()
    //let blueView = UIView()
    let myNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Press me", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()

    let temp = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        configureView()
    }
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .red
        //주어진 코드에서 override func viewWillAppear(_ animated: Bool) 메서드는 뷰 컨트롤러가 화면에 나타나기 직전에 호출되는 메서드입니다. 이 메서드는 보통 화면이 보이기 직전에 수행해야 할 작업들을 정의할 때 사용됩니다
    }
    func configureView() {
        helloLabel.text = "Hello, World"
        //
        view.addSubview(helloLabel)
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])

        myNameButton.backgroundColor = .white

        view.addSubview(myNameButton)
        NSLayoutConstraint.activate([
            myNameButton.bottomAnchor.constraint(equalTo: helloLabel.topAnchor, constant: -150),
            myNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myNameButton.widthAnchor.constraint(equalToConstant: 100),
            myNameButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
      @objc func buttonTapped() {
            helloLabel.text = "Leeo"

        }
    }

