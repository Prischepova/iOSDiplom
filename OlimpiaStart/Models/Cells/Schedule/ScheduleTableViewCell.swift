//
//  ScheduleTableViewCell.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 11.04.2023.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName = UILabel(text: "Тренировка |", font: Resources.Fonts.systemFont(with: .infinity))
    
    let team = UILabel(text: "Команда", font: Resources.Fonts.systemFont(with: .infinity))
    
    let locationName = UILabel(text: "Локация", font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold))
    
    let lessonTime = UILabel(text: "16:00 - 18:00", font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold))
    
    let tutorName = UILabel(text: "Екатерина Андреевна", font: UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold))
    
    let tutorProfil: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "profilTutorSchudle")
        image.translatesAutoresizingMaskIntoConstraints = false
       return image
    }()
    
    let typeButton: Button = {
        let label = Button()
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentHorizontalAlignment = .right
        return label
    }()
    
    let lessonTypeButton: Button = {
        let label = Button()
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentHorizontalAlignment = .left
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
        addActionToBottomButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, team, locationName], axis: .horizontal, spacing: 10, distribution: .fillEqually)
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        let leftBottomStackView = UIStackView(arrangedSubviews: [tutorProfil, tutorName], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        
        self.addSubview(leftBottomStackView)
        NSLayoutConstraint.activate([
            leftBottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            leftBottomStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//            leftBottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5),
            leftBottomStackView.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeButton, lessonTypeButton], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        
        self.contentView.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: tutorName.trailingAnchor, constant: 110),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            bottomStackView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

private extension ScheduleTableViewCell {
    func addActionToBottomButton() {
        typeButton.addTarget(self, action: #selector(typeButtonTapped), for: .touchUpInside)
        typeButton.setImage(UIImage(named: "p"), for: .normal)
        
        lessonTypeButton.addTarget(self, action: #selector(lessonTypeButtonTapped), for: .touchUpInside)
        lessonTypeButton.setImage(UIImage(named: "b"), for: .normal)
        
    }
    
    @objc func typeButtonTapped() {
        let alertInfo = UIAlertController(title: "Пропуск", message: "Отправить сообщение о пропуске тренировки", preferredStyle: .alert)

        alertInfo.addAction(UIAlertAction(title: "Назад", style: .cancel, handler: nil))
        alertInfo.addAction(UIAlertAction(title: "Отправить", style: .default, handler: nil))
        
        //так делать не стоит
        if let vc = self.next(ofType: UIViewController.self) {
            vc.present(alertInfo, animated: true, completion: nil)
        }
                
//        present(alertInfo, animated: true)
        
//        print("TAB")
    }
    
    @objc func lessonTypeButtonTapped() {
        let alertInfo = UIAlertController(title: "Больничный", message: "Отправить сообщение о больничном", preferredStyle: .alert)

        alertInfo.addAction(UIAlertAction(title: "Назад", style: .cancel, handler: nil))
        alertInfo.addAction(UIAlertAction(title: "Отправить", style: .default, handler: nil))
        
        if let vc = self.next(ofType: UIViewController.self) {
            vc.present(alertInfo, animated: true, completion: nil)
        }
        
//        present(alertInfo, animated: true)
        
//        print("TAB")
    }
}
