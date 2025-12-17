//
//  AuthVC.swift
//  BreakPoint
//
//  Created by Can Haskan on 7.12.2025.
//

import UIKit
import Firebase
import FirebaseAuth
import FBSDKLoginKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
        let loginManager = LoginManager()

        loginManager.logIn(
            permissions: ["public_profile", "email"],
            from: self
        ) { result, error in

            if let error = error {
                print("Facebook login error:", error)
                return
            }

            guard let result = result, !result.isCancelled else {
                print("Facebook login cancelled")
                return
            }

            guard let tokenString = AccessToken.current?.tokenString else {
                print("No Facebook token")
                return
            }

            let credential = FacebookAuthProvider.credential(
                withAccessToken: tokenString
            )

            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    print("Firebase auth error:", error)
                    return
                }

                // ✅ LOGIN BAŞARILI
                self.dismiss(animated: true)
            }
        }
    }
    
}
