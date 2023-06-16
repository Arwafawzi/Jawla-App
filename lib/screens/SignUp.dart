import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jawla_app/components/button.dart';
import 'package:jawla_app/components/favorite_button.dart';
import 'package:jawla_app/components/text_field.dart';
import 'package:jawla_app/constants/constants.dart';
import 'package:jawla_app/extensions/format.dart';
import 'package:jawla_app/services/api/auth/login_response.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConsirmPasswordController = TextEditingController();
  final Phone_NumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    color: Colors.white,
                    height: 510,
                    width: 600,
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(right: 50, left: 50, top: 10),
                          child: SafeArea(
                            child: Row(
                              children: [
                                Text("Create New Account",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 210, 74, 131),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                        ),
                        height8,
                        const Padding(
                          padding: EdgeInsets.only(right: 400),
                          child: Text("Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17)),
                        ),
                        CustomTextField(
                          hint: "user123",
                          iconName: Icons.person,
                          isPassword: false,
                          controller: nameController,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 400),
                          child: Text("Email",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17)),
                        ),
                        CustomTextField(
                          hint: "jollll",
                          iconName: Icons.email,
                          isPassword: false,
                          controller: nameController,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50, left: 20),
                          child: Row(
                            children: [
                              Text("Phone Number",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17)),
                            ],
                          ),
                        ),
                        CustomTextField(
                          hint: "+966000XXX",
                          iconName: Icons.phone,
                          controller: emailController,
                          isPassword: false,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 400, left: 20),
                          child: Text("Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17)),
                        ),
                        CustomTextField(
                          hint: "AAaa1100229933",
                          iconName: Icons.password,
                          isPassword: true,
                          controller: PasswordController,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50, left: 20),
                          child: Row(
                            children: [
                              Text("Consirm Password",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17)),
                            ],
                          ),
                        ),
                        CustomTextField(
                          hint: "AAaa1100229933",
                          iconName: Icons.password,
                          isPassword: true,
                          controller: ConsirmPasswordController,
                        ),
                        CustomButton(
                          text: "sign Up",
                          onPressed: () async {
                            if (emailController.text.isNotEmpty &&
                                PasswordController.text.isNotEmpty) {
                              if (emailController.text.isValidEmail) {
                                // ---------- Sign Up response ----------
                                final response = await loginResponse(body: {
                                  "email": emailController.text,
                                  "password": PasswordController.text,
                                  "Phone Number": Phone_NumberController.text ==
                                      ConsirmPasswordController,
                                  "name": nameController.text
                                });
                                print(response.body);
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          ])),
    );
  }
}
