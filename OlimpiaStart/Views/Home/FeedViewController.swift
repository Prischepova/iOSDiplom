//
//  FeedViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 28.03.2023.
//

import SnapKit
import UIKit

class FeedViewController: BaseViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    let collectionViewCell = UICollectionViewCell()
    
    var bottomCustomPayButton = Button()
    var bottomCustomDocumentuttonButton = Button()
    var customButton = Button()
    var bottomSceduleButton = UIButton()
    var bottomTraningButton = UIButton()
    var labelNews = Label()
    var labelDocuments = Label()
    var labelForYou = Label()
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Главная"
        view.backgroundColor = .white
        navigationController?.tabBarItem.title  = Resources.Strings.TabBar.feed
//        addNavBarButton(at: .left, with: "Pouse")
//        addNavBarButton(at: .right, with: "Finish")        
        addLabelNews()
        addLabelDocuments()
        addLabelForYou()
        
        initialize()
        setupLayout()
        
        setupBottomButtonConstraints()
        addActionToBottomButton()
//        bottomCustomPayButton.setTitle("Bottom", for: .normal)
//        bottomCustomPayButton.setImage(UIImage(named: "buttonBlur"), for: .normal)
    }

    override func navBarLeftButtonHandler() {
        let controller = ProfilViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func navBarRightButtonHandler() {
        let controller = NotificationViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }

    func setupBottomButtonConstraints() {
        contentView.addSubview(labelNews)
        labelNews.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
        }
        
        contentView.addSubview(labelDocuments)
        labelDocuments.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(180)
            make.left.equalToSuperview().offset(10)
        }
        
        contentView.addSubview(labelForYou)
        labelForYou.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(350)
            make.left.equalToSuperview().offset(10)
        }
        
        contentView.addSubview(bottomCustomPayButton)
        bottomCustomPayButton.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(220)
            make.leading.equalToSuperview()
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-200)
            make.height.equalTo(100)
        }
        
        contentView.addSubview(bottomCustomDocumentuttonButton)
        bottomCustomDocumentuttonButton.snp.makeConstraints { (make) -> Void in
            make.width.top.height.equalTo(bottomCustomPayButton)
            make.leading.equalTo(bottomCustomPayButton.snp.trailing)
            make.right.equalToSuperview().offset(-10)

        }
        
        contentView.addSubview(customButton)
        customButton.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(390)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)

        }
        
        contentView.addSubview(bottomSceduleButton)
        bottomSceduleButton.snp.makeConstraints { (make) -> Void in
            make.width.top.equalTo(customButton)
            make.leading.equalTo(customButton.snp.trailing)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalTo(customButton).offset(-95)

        }
        
        contentView.addSubview(bottomTraningButton)
        bottomTraningButton.snp.makeConstraints { (make) -> Void in
            make.width.bottom.equalTo(customButton)
            make.leading.equalTo(customButton.snp.trailing)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(customButton).offset(72)
            make.bottom.equalTo(contentView)
        }
        
//        make.top.equalToSuperview().offset(10)
//        make.left.equalToSuperview().offset(10)
//        make.right.equalToSuperview().offset(-220)
//        make.height.equalTo(200)
    }
    
    
    
    
    
    
    
    func addActionToBottomButton() {
        bottomCustomPayButton.addTarget(self, action: #selector(bottomButtonPayTapped), for: .touchUpInside)
        bottomCustomPayButton.setImage(UIImage(named: "payImg"), for: .normal)
        
        bottomCustomDocumentuttonButton.addTarget(self, action: #selector(bottomDocumentationButtonTapped), for: .touchUpInside)
        bottomCustomDocumentuttonButton.setImage(UIImage(named: "documentImg"), for: .normal)
        
        customButton.setImage(UIImage(named: "list"), for: .normal)
        
        bottomSceduleButton.addTarget(self, action: #selector(bottomSceduleButtonTapped), for: .touchUpInside)
//        bottomSceduleButton.setTitle("Расписание", for: .normal)
//        bottomSceduleButton.backgroundColor = .white
        
        bottomTraningButton.addTarget(self, action: #selector(bottomTraningButtonTapped), for: .touchUpInside)
//        bottomTraningButton.setTitle("Запись на индивид", for: .normal)
//        bottomTraningButton.backgroundColor = .white
        
    }
    
    @objc func bottomButtonPayTapped() {
        let controller = PayViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func bottomDocumentationButtonTapped() {
        let controller = DocumentsViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func bottomSceduleButtonTapped() {
        let controller = ScheduleViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func bottomTraningButtonTapped() {
        let controller = TrainingViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func addLabelNews() {
        labelNews.text = "НОВОСТИ"
    }
    
    func addLabelDocuments() {
        labelDocuments.text = "ДОКУМЕНТЫ"
    }
    
    func addLabelForYou() {
        labelForYou.text = "ДЛЯ ВАС"
    }
    
    // MARK: - Private properties
    private let tableView = UITableView()
    private var items: [Resources.FeedItemType] = [
        .stories([
            FeedStoriesItemCellInfo(image: UIImage(named: "logoForStory")!, username: "OlimpiaStart", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "tutor")!, username: "tutor", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "tutor")!, username: "tutor", isAddButtonVisible: false, isNewStory: true),
            FeedStoriesItemCellInfo(image: UIImage(named: "tutor")!, username: "tutor", isAddButtonVisible: false, isNewStory: false),
            FeedStoriesItemCellInfo(image: UIImage(named: "tutor")!, username: "tutor", isAddButtonVisible: false, isNewStory: false)
        ])
    ]
}


// MARK: - Private methods
private extension FeedViewController {
    func initialize() {
//        view.backgroundColor = .clear
//        navigationController?.navigationBar.tintColor = .black
        navigationItem.leftBarButtonItems = makeLeftBarButtonItems()
        navigationItem.rightBarButtonItems = makeRightBarButtonItems()
        self.tableView.backgroundView = nil
        self.tableView.backgroundColor = .clear
        tableView.dataSource = self
        tableView.separatorColor = .clear
        tableView.register(FeedStoriesSetCell.self, forCellReuseIdentifier: String(describing: FeedStoriesSetCell.self))
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    func makeLeftBarButtonItems() -> [UIBarButtonItem] {
        let logoBarButtonItem = UIBarButtonItem(customView: ProfilView())
        let addBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.right"), style: .plain, target: self, action: #selector(didTapProfilButton))
        addBarButtonItem.tintColor = .white
        return [logoBarButtonItem, addBarButtonItem]
    }
    
    func makeRightBarButtonItems() -> [UIBarButtonItem] {
        let addBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(didTapPlusButton))
        addBarButtonItem.tintColor = .white
        return [addBarButtonItem]
    }
    
    @objc func didTapProfilButton() {
        let controller = ProfilViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func didTapPlusButton() {
        let controller = NotificationViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
    //MARK: ScrollView
    func setupLayout() {
        configureScrollView()
        configureContentView()
        prepareScrollView()
    }
    
    func configureScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
    }
    
    func configureContentView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func prepareScrollView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
}

// MARK: - UITableViewDataSource
extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        switch item {
        case .stories(let info):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FeedStoriesSetCell.self), for: indexPath) as! FeedStoriesSetCell
            cell.configure(with: info)
            return cell
        }
    }
}
