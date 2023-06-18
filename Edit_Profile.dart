import 'package:flutter/material.dart';
import 'package:jawla_app/components/button.dart';
import 'package:jawla_app/components/text_field.dart';
import 'package:jawla_app/constants/app_styles.dart';
import 'package:jawla_app/extensions/format.dart';
import 'package:jawla_app/services/api/auth/login_response.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final Phone_NumberController = TextEditingController();
  final cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Edit Profile"),
        ),
        backgroundColor: primaryColor,
        body: Stack(alignment: Alignment.bottomCenter, children: [
          Container(),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: 700,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Text("Change picture"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text("Name", style: headLineStyle1),
                    ),
                    CustomTextField(
                      hint: "Name",
                      iconName: Icons.person,
                      isPassword: false,
                      controller: emailController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text("Email", style: headLineStyle1),
                    ),
                    CustomTextField(
                      hint: "Email",
                      iconName: Icons.password,
                      isPassword: false,
                      controller: nameController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text("phone", style: headLineStyle1),
                    ),
                    CustomTextField(
                      hint: "+96600000xxxxx",
                      iconName: Icons.phone,
                      isPassword: false,
                      controller: Phone_NumberController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text("city", style: headLineStyle1),
                    ),
                    CustomTextField(
                      hint: "Riyadh",
                      iconName: Icons.location_city,
                      isPassword: false,
                      controller: cityController,
                    ),
                    CustomButton(
                      text: "Save",
                      onPressed: () async {
                        if (emailController.text.isNotEmpty &&
                            Phone_NumberController.text.isNotEmpty) {
                          if (emailController.text.isValidEmail) {
                            final response = await loginResponse(body: {
                              "email": emailController.text,
                              "Phone Number": Phone_NumberController.text,
                              "name": nameController.text
                            });
                            print(response.body);
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            bottom: 600,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(width: 6, color: Colors.white),
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
              ),
            ),
          ),
          Positioned(
              top: 8,
              bottom: 500,
              right: 150,
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://icons.veryicon.com/png/o/education-technology/onemind/edit-97.png"),
                  ),
                ),
                onTap: () {},
              ))
        ]));
  }
}
