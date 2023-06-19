import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jawla_app/constants/app_styles.dart';
import 'package:jawla_app/constants/constants.dart';

class Veiw_Activities extends StatefulWidget {
  @override
  State<Veiw_Activities> createState() => _Veiw_ActivitiesState();
}

class _Veiw_ActivitiesState extends State<Veiw_Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          elevation: 0.0,
          title: Text("View_Activities"),
        ),
      ),
      backgroundColor: primaryColor,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              height64,
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/login-bg.png'),
                          width: 80,
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Horse Cup Al-safnat', style: headLineStyle3),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(
                                ' loction:Riyadh',
                                style: headLineStyle4,
                              ),
                            ),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(left: 80),
                              child: Text(
                                ' 2023-12-15- monday',
                                style: headLineStyle5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              height8,
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/login-bg.png'),
                          width: 80,
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Horse Cup Al-safnat', style: headLineStyle3),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(
                                ' loction:Riyadh',
                                style: headLineStyle4,
                              ),
                            ),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(left: 90),
                              child: Text(
                                ' 2023-12-15- monday',
                                style: headLineStyle5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              height8,
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/login-bg.png'),
                          width: 80,
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Horse Cup Al-safnat', style: headLineStyle3),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(
                                ' loction:Riyadh',
                                style: headLineStyle4,
                              ),
                            ),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(left: 90),
                              child: Text(
                                ' 2023-12-15- monday',
                                style: headLineStyle5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              height8,
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/login-bg.png'),
                          width: 80,
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Horse Cup Al-safnat', style: headLineStyle3),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(
                                ' loction:Riyadh',
                                style: headLineStyle4,
                              ),
                            ),
                            height8,
                            Padding(
                              padding: EdgeInsets.only(left: 90),
                              child: Text(
                                ' 2023-12-15- monday',
                                style: headLineStyle5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
