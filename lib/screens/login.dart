import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tracker_login_register/screens/home.dart';
import 'package:tracker_login_register/screens/register.dart';
import 'package:tracker_login_register/shared/constant.dart';

import '../shared/app_provider.dart';
import '../shared/components.dart';
import '../shared/utils.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
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
                                return 'email address must not be empty';
                              }
                              return null;
                            },
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: 'Enter Your Email'),
                      ),
                      SizedBox(
                        height: 10.0,
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
                            suffix: isPassword == true ? Icons.visibility_off : Icons.visibility,
                          onChange: (String value) => print(value),
                          onSubmit: (String value) => print(value),
                            validate: (String? value) {
                              if (value!.isEmpty) {
                                return 'password must not be empty';
                              }
                              return null;
                            },
                            label: 'Enter your password',
                          suffixPressed:(){
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
                      var message = await provider.signIn(emailController.text, passwordController.text);
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
                          const Text('Don\'t have an account?'),
                          TextButton(
                            onPressed: () {Navigator.pushNamed(context, Register.routeName);},
                            child: const Text('Register now',style: TextStyle(color: Color(0xfff2ba52),),),
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
