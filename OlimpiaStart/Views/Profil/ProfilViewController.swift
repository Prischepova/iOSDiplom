//
//  ProfilViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 30.03.2023.
//

import UIKit
import SnapKit
import MobileCoreServices
import UniformTypeIdentifiers

class ProfilViewController: BaseViewController, UINavigationControllerDelegate {
    
    var customButton = Button()
    var customDataButton = Button()
    var userImgButton = Button()
    var bottomSceduleButton = UIButton()
    var bottomTraningButton = UIButton()
    var nameUserLabel = Label()
    var bNameUserLabel = Label()
    
    let userProfilImgButton: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named:"userImg")
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        setupBottomButtonConstraints()
        addActionToBottomButton()
        
        addNameUserLabel()
//        addBNameUserLabel()
    }
    
    func setupBottomButtonConstraints() {
        
        view.addSubview(userImgButton)
        userImgButton.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(40)
     
            make.trailing.equalToSuperview().offset(-130)
            make.leading.equalToSuperview().offset(130)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(userProfilImgButton)
        userProfilImgButton.snp.makeConstraints { (make) -> Void in
            make.top.bottom.leading.trailing.equalTo(userImgButton).offset(0)
        }
        
//        view.addSubview(bNameUserLabel)
//        bNameUserLabel.snp.makeConstraints { (make) -> Void in
//            make.top.equalTo(userImgButton)
//            make.leading.equalTo(userImgButton.snp.trailing)
//            make.bottom.equalTo(userImgButton).offset(-10)
//        }
        
        view.addSubview(nameUserLabel)
        nameUserLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(customDataButton)
        customDataButton.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(customButton)
        customButton.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(300)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)

        }
        
        view.addSubview(bottomSceduleButton)
        bottomSceduleButton.snp.makeConstraints { (make) -> Void in
            make.width.top.equalTo(customButton)
            make.leading.equalTo(customButton.snp.trailing)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalTo(customButton).offset(-92)

        }
        
        view.addSubview(bottomTraningButton)
        bottomTraningButton.snp.makeConstraints { (make) -> Void in
            make.width.bottom.equalTo(customButton)
            make.leading.equalTo(customButton.snp.trailing)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(customButton).offset(72)
        }
    }
    
    func addActionToBottomButton() {
        userImgButton.addTarget(self, action: #selector(userImgButtonTapped), for: .touchUpInside)
//        userImgButton.backgroundColor = .white
//        userImgButton.setImage(UIImage(named: "userImg"), for: .normal)
        
        customDataButton.addTarget(self, action: #selector(customDataButtonTapped), for: .touchUpInside)
        customDataButton.setImage(UIImage(named: "listData"), for: .normal)
//        customDataButton.backgroundColor = .white

        customButton.setImage(UIImage(named: "listDP"), for: .normal)
        
        bottomSceduleButton.addTarget(self, action: #selector(bottomSceduleButtonTapped), for: .touchUpInside)
//        bottomSceduleButton.setTitle("Документы", for: .normal)
//        bottomSceduleButton.backgroundColor = .white
        
        bottomTraningButton.addTarget(self, action: #selector(bottomTraningButtonTapped), for: .touchUpInside)
//        bottomTraningButton.setTitle("Оплата", for: .normal)
//        bottomTraningButton.backgroundColor = .white
        
    }
    
    @objc func userImgButtonTapped() {
        actionSheet()
    }
    
    func actionSheet() {
        let alert = UIAlertController(title: "Выберете изображение", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Открыть камеру", style: .default, handler: { (handler) in
            self.openCamera()
        }))
        alert.addAction(UIAlertAction(title: "Галерея", style: .default, handler: { (handler) in
            self.openGallery()
        }))
        alert.addAction(UIAlertAction(title: "Назад", style: .default, handler: { (handler) in
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func openCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let image = UIImagePickerController()
            image.allowsEditing = true
            image.sourceType = .camera
            image.mediaTypes = [UTType.image.identifier as String]
            self.present(image, animated: true, completion: nil)
        }
    }
    
    func openGallery() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let image = UIImagePickerController()
            image.allowsEditing = true
            image.delegate = self
            self.present(image, animated: true, completion: nil)
        }
    }
    
    
    
    @objc func customDataButtonTapped() {
        let controller = UserDataViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func bottomSceduleButtonTapped() {
        let controller = DocumentsViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func bottomTraningButtonTapped() {
        let controller = PayViewController ()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func addNameUserLabel() {
        nameUserLabel.text = "Ваше имя"
        nameUserLabel.textColor = .white
        nameUserLabel.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
    
    func addBNameUserLabel() {
        nameUserLabel.text = "И"
    }
    
}

extension ProfilViewController: UIImagePickerControllerDelegate, UINavigationBarDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
        
        let data = convertFromUIimageTODict(info)
        
        if let editingImage = data[convertInKey((UIImagePickerController.InfoKey.editedImage))] as? UIImage{
            print(editingImage)
            self.userProfilImgButton.image = editingImage
        }
//        if let editingImage = info[UIImagePickerController.InfoKey(rawValue: convertInKey(UIImagePickerController.InfoKey.editedImage))] as? UIImage {
//            print(editingImage)
//            self.userImgButton.image = editingImage
//        }
        picker.dismiss(animated: true, completion:  nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func convertFromUIimageTODict( _ input: [UIImagePickerController.InfoKey : Any]) -> [String : Any] {
        return Dictionary(uniqueKeysWithValues: input.map({ key , value in (key.rawValue, value)
            
        }))
    }
    
    func convertInKey(_ input: UIImagePickerController.InfoKey) -> String {
        return input.rawValue
    }
}
