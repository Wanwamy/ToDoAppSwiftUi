//
//  LoginView.swift
//  ToDoApp
//
//  Created by Wanmy on 20/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isLogin = false
    
    var body: some View {
        VStack{
            HeaderView()
            //Login form
            
            Form{
                TextField("Email address", text:$email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                        Text("Login")
                            .foregroundColor(.white)
                            .bold()
                    }
                }

            }
            //create account
            VStack{
                Text("New here?")
                Button("Create an account") {
                    
                }
            }
            .padding(.bottom, 10)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

