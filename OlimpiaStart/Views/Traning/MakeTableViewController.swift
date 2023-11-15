//
//  MakeViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 30.03.2023.
//

import UIKit
import SnapKit

class MakeTableViewController: UITableViewController {
    
    let buttonTapped: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.7702020407, green: 0.7702020407, blue: 0.7702020407, alpha: 1)
        button.layer.cornerRadius = 4
        return button
    }()
    
//    let buttonPay: UIButton = {
//        let button = UIButton()
//        button.backgroundColor = #colorLiteral(red: 0.7702020407, green: 0.7702020407, blue: 0.7702020407, alpha: 1)
//        button.layer.cornerRadius = 4
//        return button
//    }()
    
    let idOptionSheduleCell = "idOptionSheduleCell"
    let idOptionSheduleHeader = "idOptionSheduleHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
//        setupBottomButtonConstraints()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9594197869, green: 0.9599153399, blue: 0.975127399, alpha: 1)
        tableView.separatorStyle = .none
        tableView.register(MakeScheduleTableCell.self, forCellReuseIdentifier: idOptionSheduleCell)
        tableView.register(HeaderMakeSchedulTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionSheduleHeader)

    }
    
//    func setupBottomButtonConstraints() {
//        view.addSubview(buttonTapped)
//        buttonTapped.snp.makeConstraints { (make) -> Void in
//            make.top.equalToSuperview().offset(4)
//            make.bottom.equalToSuperview().offset(-710)
//            make.centerX.equalTo(view)
//            make.width.equalTo(view).offset(-320)
//            make.height.equalTo(view).offset(-620)
//        }
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 1
        case 2: return 1
        case 3: return 1
        case 4: return 2
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionSheduleCell, for: indexPath) as! MakeScheduleTableCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionSheduleHeader) as! HeaderMakeSchedulTableViewCell
        header.headerConfigure(section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
