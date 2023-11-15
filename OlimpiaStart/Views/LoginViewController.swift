//
//  LoginViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 25.05.2023.
//

import SnapKit
import UIKit

class LoginViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    var labelLogin = UILabel()
    var loginField = TextField()
    var passField = TextField()
    var loginButton = Button()
    var label = UILabel()
    
//    var viewModel = ViewModel()

    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
        
        addLabel()
        
        setupBottomButtonConstraints()
        addActionToBottomButton()
        
//        bindViewModel()
//        makePostCall()

    }
    
    func configure() {
        view.backgroundColor = .white
        let background = UIImage(named: "backgroundForViews")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

    func setupBottomButtonConstraints() {
        view.addSubview(labelLogin)
        labelLogin.snp.makeConstraints { (make) -> Void in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(loginField)
        loginField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(labelLogin).offset(92)
            make.trailing.equalToSuperview().offset(-10)
            make.leading.equalToSuperview().offset(10)
        }
        
        view.addSubview(passField)
        passField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(loginField).offset(50)
            make.trailing.equalToSuperview().offset(-10)
            make.leading.equalToSuperview().offset(10)
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(passField).offset(100)
            make.centerX.equalToSuperview()
            make.trailing.equalToSuperview().offset(-40)
            make.leading.equalToSuperview().offset(40)
        }
        
        
        view.addSubview(label)
        label.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(loginButton).offset(100)
            make.centerX.equalToSuperview()
        }
    }
    

    func addActionToBottomButton() {
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Войти", for: .normal)
        loginButton.backgroundColor      = Resources.Colors.background
        loginButton.layer.cornerRadius   = 19
    }
    
    @objc func loginButtonTapped() {
//        let todosEndpoint: String = "http://127.0.0.1:8001/"
//              guard let todosURL = URL(string: todosEndpoint) else {
//                print("Error: cannot create URL")
//                return
//              }
//              var todosUrlRequest = URLRequest(url: todosURL)
//              todosUrlRequest.httpMethod = "POST"
//              let newTodo: [String: Any] = ["title": "My First todo", "completed": false, "userId": 1]
//              let jsonTodo: Data
//              do {
//                jsonTodo = try JSONSerialization.data(withJSONObject: newTodo, options: [])
//                todosUrlRequest.httpBody = jsonTodo
//              } catch {
//                print("Error: cannot create JSON from todo")
//                return
//              }
//
//              let session = URLSession.shared
//
//              let task = session.dataTask(with: todosUrlRequest) {
//                (data, response, error) in
//                guard error == nil else {
//                  print("error calling POST on /todos/1")
//                  print(error!)
//                  return
//                }
//                guard let responseData = data else {
//                  print("Error: did not receive data")
//                  return
//                }
//
//                // parse the result as JSON, since that's what the API provides
//                do {
//                  guard let receivedTodo = try JSONSerialization.jsonObject(with: responseData,
//                    options: []) as? [String: Any] else {
//                      print("Could not get JSON from responseData as dictionary")
//                      return
//                  }
//                  print("The todo is: " + receivedTodo.description)
//
//                  guard let todoID = receivedTodo["username"] as? Int else {
//                    print("Could not get todoID as int from JSON")
//                    return
//                  }
//                  print("The ID is: \(todoID)")
//                } catch  {
//                  print("error parsing response from POST on /todos")
//                  return
//                }
//              }
//              task.resume()
        
        
        
//        // Set up the URL request
//         let todoEndpoint: String = "http://127.0.0.1:8001/"
//        guard let url = URL(string: todoEndpoint) else {
//                  print("Error: cannot create URL")
//                  return
//                }
//                let urlRequest = URLRequest(url: url)
//
//
////        let userPasswordString = "\(loginField):\(passField)"
////        let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
//
//        //Credentials
//          let loginField = ""
//          let passField = ""
//          let loginString = "\(loginField):\(passField)"
//          let loginData = loginString.data(using: String.Encoding.utf8)!
//          let base64LoginString = loginData.base64EncodedString()
//
//          //Request
//          guard let url = URL(string: todoEndpoint) else {return}
//          var request = URLRequest(url: url)
//          request.httpMethod = "GET"
//          request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
//
//          //Setup Session
//          let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//              do {
//                  if let data = data {
//                      print(String(data: data, encoding: .utf8)!)
//                      let result = try JSONDecoder().decode([ItemsModel].self, from: data)
////                      DispatchQueue.main.async
////                      {
////                          self.user = result
////                      }
//
//
//                  }
//
//                  else {
//                      print(" No Data ")
//                  }
//              } catch( let error)
//              {
//
//                  print(String(describing: error))
//              }
//
//
//
//      }
//          task.resume()
        
        
        
//        // Set up the URL request
//         let todoEndpoint: String = "http://127.0.0.1:8001/api/v1/drf-auth/login/?next=/api/v1/auth/"
//         guard let url = URL(string: todoEndpoint) else {
//           print("Error: cannot create URL")
//           return
//         }
//         let urlRequest = URLRequest(url: url)
//
//         // set up the session
//         let config = URLSessionConfiguration.default
//         let session = URLSession(configuration: config)
//
//         // make the request
//         let task = session.dataTask(with: urlRequest) {
//           (data, response, error) in
//           // check for any errors
//           guard error == nil else {
//             print("error calling GET on /todos/1")
//             print(error!)
//             return
//           }
//           // make sure we got data
//           guard let responseData = data else {
//             print("Error: did not receive data")
//             return
//           }
//           // parse the result as JSON, since that's what the API provides
//           do {
//             guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
//               as? [String: Any] else {
//                 print("error trying to convert data to JSON")
//                 return
//             }
//             // now we have the todo
//             // let's just print it to prove we can access it
//             print("The todo is: " + todo.description)
//
//             // the todo object is a dictionary
//             // so we just access the title using the "title" key
//             // so check for a title and print it if we have one
//             guard let todoTitle = todo["title"] as? String else {
//               print("Could not get todo title from JSON")
//               return
//             }
//             print("The title is: " + todoTitle)
//           } catch  {
//             print("error trying to convert data to JSON")
//             return
//           }
//         }
//         task.resume()
        
        
        
        
//        let url = URL(string: "http://127.0.0.1:8001/")
//        let request = URLRequest(url: url!)
//
//        let config = URLSessionConfiguration.default
//        let userPasswordString = "\(loginField):\(passField)"
//        let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
//        let base64EncodedCredential = userPasswordData!.base64EncodedString(options: .init(rawValue: 0))
//        let authString = "Basic \(base64EncodedCredential)"
//        config.httpAdditionalHeaders = ["Authorization" : authString]
//        let session = URLSession(configuration: config)
//        let task = session.dataTask(with: url!) { (data, response, error) in
//        }
//        task.resume()
        
        let controller = TabBarController()
        navigationController?.isNavigationBarHidden = true;
        navigationController?.pushViewController(controller, animated: true)
    }
    
//    func makePostCall() {
//      let todosEndpoint: String = "http://127.0.0.1:8001/api/v1/drf-auth/login/?next=/api/v1/auth/"
//      guard let todosURL = URL(string: todosEndpoint) else {
//        print("Error: cannot create URL")
//        return
//      }
//      var todosUrlRequest = URLRequest(url: todosURL)
//      todosUrlRequest.httpMethod = "POST"
//      let newTodo: [String: Any] = ["title": "My First todo", "completed": false, "userId": 1]
//      let jsonTodo: Data
//      do {
//        jsonTodo = try JSONSerialization.data(withJSONObject: newTodo, options: [])
//        todosUrlRequest.httpBody = jsonTodo
//      } catch {
//        print("Error: cannot create JSON from todo")
//        return
//      }
//
//      let session = URLSession.shared
//
//      let task = session.dataTask(with: todosUrlRequest) {
//        (data, response, error) in
//        guard error == nil else {
//          print("error calling POST on /todos/1")
//          print(error!)
//          return
//        }
//        guard let responseData = data else {
//          print("Error: did not receive data")
//          return
//        }
//
//        // parse the result as JSON, since that's what the API provides
//        do {
//          guard let receivedTodo = try JSONSerialization.jsonObject(with: responseData,
//            options: []) as? [String: Any] else {
//              print("Could not get JSON from responseData as dictionary")
//              return
//          }
//          print("The todo is: " + receivedTodo.description)
//
//          guard let todoID = receivedTodo["id"] as? Int else {
//            print("Could not get todoID as int from JSON")
//            return
//          }
//          print("The ID is: \(todoID)")
//        } catch  {
//          print("error parsing response from POST on /todos")
//          return
//        }
//      }
//      task.resume()
//    }
    
    
    // MARK:- Alert function

    func Displayalert(usermessage:String)

    {

        let Myalert = UIAlertController(title: "Alert", message: usermessage, preferredStyle: UIAlertController.Style.alert)

        let Action = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)

        Myalert.addAction(Action)

        self.present(Myalert, animated: true, completion: nil)
    }

    
    
    func addLabel() {
        loginField.placeholder = "Логин"
        
        passField.placeholder = "Пароль"
        
        labelLogin.text = "АУТЕНТИФИКАЦИЯ"
        labelLogin.textColor = Resources.Colors.active
        labelLogin.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.regular)
        
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = ""
    }
    
//    func bindViewModel() {
//        viewModel.statusText.bind({ (statusText) in
//            DispatchQueue.main.async {
//                self.label.text = statusText
//            }
//        })
//        viewModel.statusColor.bind({(statusColor) in
//            DispatchQueue.main.async {
//                self.label.textColor = statusColor
//            }
//        })
//    }

}

