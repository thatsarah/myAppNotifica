import UIKit

class RegisterViewController: UIViewController {
    
   // var viewMain = LoginView {
        
        override func loadView() {
            self.view = RegisterView()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "REGISTRAR"
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
        
    }
