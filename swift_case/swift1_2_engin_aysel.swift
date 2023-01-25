nameTextField.placeholder = "Enter your name"
emailTextField.placeholder = "Enter your email"
passwordTextField.placeholder = "Enter your password"
retypePasswordTextField.placeholder = "Re-enter your password"
let views: [String: Any] = ["nameTextField": nameTextField, "emailTextField": emailTextField, "passwordTextField": passwordTextField, "retypePasswordTextField": retypePasswordTextField, "registerButton": registerButton]
var constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[nameTextField]-[emailTextField]-[passwordTextField]-[retypePasswordTextField]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)

constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[nameTextField]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)
constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[emailTextField]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)
constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[passwordTextField]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)
constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[retypePasswordTextField]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)

constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[registerButton]-|", options: [], metrics: nil, views: views)
view.addConstraints(constraints)

@IBAction func registerButtonTapped(_ sender: Any) {
    let name = nameTextField.text
    let email = emailTextField.text
    let password = passwordTextField.text
    let retypePassword = retypePasswordTextField.text

}

        // The above lines of code are the lines I wrote to run the swift plugin compatible with vscode.!!


        // LoginViewController.swift
        // Created by Engin Aysel 20/01/2023
        // İOS Academy Youtube kanalından çalışarak yazdığım bir projedir.

        
        /* swift üzerinden çalıştığım ikinci projem olduğu için pek profesyonel bir iş çıkaramadığımın farkındayım, bazı yerleri eksik yazdım. Arayüz ve kod kısmını
        arkadaşımın Mac'i üzerinden eşleştirip yaptım kendi bilgisayarımda VisualStudio'ya swift extensionlarını, kütüphanesini kurup kodları bu şekilde yazdım. Staja kabul alırsam
        macBook temin edebileceğimi ya da bilgisayarıma virtual machine kurarak halledebileceğimi düşünüyorum.

        teşekkürler */

    


        


        import UIKit
        
        class LoginViewController: UIViewController  {
            @IBOutLet weak var loginButton: UIButton!
            @IBOutLet weak var signUpButton: UIButton!
            @IBOutLet weak var errorLabel: UILabel!
            @IBOutLet weak var passwordConfirmationTextField: UITextfield!
            @IBOutLet weak var passwordTextField: UITextfield!
            @IBOutLet weak var emailTextField: UITextfield!
            @IBOutLet weak var segmentedControl: UISegmentedControl!

            private enum PageType {
                case login 
                case signUp

            }
            private var currentPageType: PageType= .login {
                didSet {

                }
            }

            override func viewDidLoad () {
                super.viewDidLoad()
                view.backgroundColor= .black
                
            }
            @IBAction func forgetPasswordButtonTapped(_ sender: Any) {

            }

            @IBAction func segmentedControlChanged(_sender: UISegmentedControl){
                currentPageType= sender.selectedSegmentIndex == 0 ? .login: .signUp
            }
             if sender.selectedSegmentIndex == 0 {
                currentPageType= .login
             } else {
                currentPageType = .signUp
             }
            



            
        }
        

