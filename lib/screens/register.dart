import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker_login_register/screens/home.dart';
import 'package:tracker_login_register/shared/app_provider.dart';

import '../shared/components.dart';
import '../shared/constant.dart';
import '../shared/utils.dart';
import 'login.dart';

class Register extends StatefulWidget {
  static const String routeName = 'register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var passwordController = TextEditingController();
    var emailController = TextEditingController();
    var formValidate = GlobalKey<FormState>();
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Form(
                key: formValidate,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png'),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 300),
                        child: Text(
                          'Email Address',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: defaultFormField(
                            onChange: (value) => print(value),
                            onSubmit: (value) => print(value),
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'email is required';
                              }
                              return null;
                            },
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: 'Enter Your Email'),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 300),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          isPassword: isPassword,
                          suffix: isPassword == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          onChange: (String value) => print(value),
                          onSubmit: (String value) => print(value),
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'password is required';
                            }
                            return null;
                          },
                          label: 'Enter your password',
                          suffixPressed: () {
                            isPassword = !isPassword;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      defaultButton(
                          textStyle: Colors.black,
                          background: primaryColor,
                          function: () async {
                            if (formValidate.currentState!.validate()) {
                              print(emailController.text);
                              print(passwordController.text);
                              var message = await provider.signUp(emailController.text, passwordController.text);
                              if(message == 'Done'){
                                Navigator.pushNamedAndRemoveUntil(context, Home.routeName, (route) => false);
                              }else{
                                DialogUtils.showDialogMessage(context, message);
                              }
                            }
                          },
                          text: 'Continue'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Login.routeName);
                            },
                            child: const Text(
                              'Login now',
                              style: TextStyle(
                                color: Color(0xfff2ba52),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
