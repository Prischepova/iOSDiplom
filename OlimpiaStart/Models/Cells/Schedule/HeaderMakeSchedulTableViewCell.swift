//
//  HeaderMakeSchedulTableViewCell.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 13.04.2023.
//

import UIKit

class HeaderMakeSchedulTableViewCell: UITableViewHeaderFooterView {
    
    let headerLabel = UILabel(text: "", font: Resources.Fonts.systemFontRegular(with: .infinity))
    
    let headerNameArray = ["Тренер", "Гимнастка", "Адрес трениовки", "Цвет", "Время и дата", ""]

    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        headerLabel.textColor = #colorLiteral(red: 0.6864741445, green: 0.6864741445, blue: 0.6864741445, alpha: 1)
        
        setConstraints()
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func headerConfigure(section: Int) {
        headerLabel.text = headerNameArray[section]
    }
    
    func setConstraints() {
        
        self.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
}

private extension ScheduleTableViewCell {
    func addActionToBottomButton() {
        
    }

}


