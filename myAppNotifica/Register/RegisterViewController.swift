import UIKit

class RegisterViewController: ViewControllerDefault {
    
    let registerView = RegisterView()
    var goToLoginHandler: (() -> Void)?

   // var viewMain = LoginView {
        
        override func loadView() {
            self.view = registerView
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "REGISTRAR"
            registerView.buttonLogar.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)
        }
        
    @objc private func goToLogin() {
       // goToLoginHandler?()    
        
        self.navigationController?.popViewController(animated: true)
    }
    
    }

