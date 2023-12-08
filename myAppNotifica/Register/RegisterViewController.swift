import UIKit

class RegisterViewController: UIViewController {
    
    let registerView = RegisterView()
    var goToLoginHandler: (() -> Void)?

   // var viewMain = LoginView {
        
        override func loadView() {
            self.view = registerView
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "REGISTRAR"
            self.navigationController?.navigationBar.prefersLargeTitles = true
            registerView.buttonLogar.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)

        }
        
    @objc private func goToLogin() {
        goToLoginHandler?()      
    }
    
    }

