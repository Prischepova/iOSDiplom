//
//  MakeScheduleTableCell.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 13.04.2023.
//

import UIKit

class MakeScheduleTableCell: UITableViewCell {
    
    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameCellLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.systemFontRegular(with: .infinity)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let repapeatButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let cellNameArray = [["Имя тренера"],
                         ["Имя гимнастки"],
                         ["Адрес тренировки"],
                         [""],
                         ["Время", "Дата"],
                         [""]]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
        addActionToBottomButton()
        
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
        
        if indexPath == [3,0] {
            backgroundViewCell.backgroundColor = .blue
        }
        
        if indexPath == [5,0] {
            repapeatButton.layer.cornerRadius = 10
            repapeatButton.setTitle("Оплатить тренировку", for: .normal)
            repapeatButton.backgroundColor = #colorLiteral(red: 0, green: 0.4786517024, blue: 1, alpha: 1)
        }
    }
    
    func setConstraints() {
        self.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
        
        self.addSubview(nameCellLabel)
        NSLayoutConstraint.activate([
            nameCellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 15),
        ])
        
        self.addSubview(repapeatButton)
        NSLayoutConstraint.activate([
//            nameCellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            repapeatButton.topAnchor.constraint(equalTo: backgroundViewCell.topAnchor, constant: 0),
            repapeatButton.bottomAnchor.constraint(equalTo: backgroundViewCell.bottomAnchor, constant: 0),
            repapeatButton.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 0),
            repapeatButton.trailingAnchor.constraint(equalTo: backgroundViewCell.trailingAnchor, constant: 0),
        ])
    }
    
    
    
    func addActionToBottomButton() {
        repapeatButton.addTarget(self, action: #selector(repapeatButtonPayTapped), for: .touchUpInside)
    }

    @objc func repapeatButtonPayTapped() {
        
    }
    
}

//
private extension ScheduleTableViewCell {
    func addActionToBottomButton() {
        
    }

}

