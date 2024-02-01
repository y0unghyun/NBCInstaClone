//
//  ProfileViewController.swift
//  NBCInstaClone
//
//  Created by 영현 on 1/31/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let userImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ProfilePicture")
        image.frame.size = CGSize(width: 150.0, height: 150.0)
        image.layer.cornerRadius = 20
        image.layer.borderColor = CGColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1)
        image.layer.borderWidth = 2.0
        return image
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "User Name"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    let userAgeLabel: UILabel = {
        let label = UILabel()
        label.text = "User Age"
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addView()
        setConstraint()
    }
    
    func addView() {
        view.addSubview(userImageView)
        view.addSubview(userNameLabel)
        view.addSubview(userAgeLabel)
    }
    
    func setConstraint() {
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 14),
            userImageView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            
            userNameLabel.topAnchor.constraint(equalTo: self.userImageView.bottomAnchor, constant: 14),
            userNameLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            userNameLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 14),
            
            userAgeLabel.topAnchor.constraint(equalTo: self.userNameLabel.bottomAnchor, constant: 14),
            userAgeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            userAgeLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 14)
        ])
    }
}


//MARK: ADD CANVAS FUNCTION
import SwiftUI

struct pViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ProfileViewController {
        return ProfileViewController()
    }
    
    func updateUIViewController(_ uiViewController: ProfileViewController, context: Context) {
    }
    
    typealias UIViewControllerType = ProfileViewController
}

@available(iOS 13.0.0, *)
struct pViewPreview: PreviewProvider {
    static var previews: some View {
        pViewControllerRepresentable()
    }
}
