//
//  SignUpView.swift
//  InvoiceManager
//
//  Created by Parth Chopra on 12/21/23.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var viewModel = SignUpViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "register",
                       subtitle: "begin your easybill journey",
                       angle: -20,
                       background: .teal)
            .padding(.top, 8)
            .offset(y: -20)
            
            Form {
                TextField("full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .font(.custom("Avenir", size: 18))
                    .padding(.all, 2)
                TextField("email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .font(.custom("Avenir", size: 18))
                    .padding(.all, 2)
                SecureField("password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .font(.custom("Avenir", size: 18))
                    .padding(.all, 2)
                
                Button {
                    viewModel.register()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Color.mint)
                        Text("sign up")
                            .bold()
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir", size: 18))
                    }
                }
                .padding(.top)
            }
            .scrollContentBackground(.hidden)
            .padding(.top, 8)
            
            Spacer()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
