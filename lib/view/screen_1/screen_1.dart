import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen_2/screen_2.dart';

void main() {
  runApp(Loginpage());
}

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController object = TextEditingController();
    TextEditingController object1 = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=600"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 231, 231),
                borderRadius: BorderRadiusDirectional.circular(20),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: object,
                            decoration: InputDecoration(
                                hintText: "username",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "enter the username";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              controller: object1,
                              decoration: InputDecoration(
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "enter the username";
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {},
                          //     child: Text(
                          //       "login",
                          //     )),
                          InkWell(
                            onTap: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Homescreen(),
                                    ));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(20),
                                color: Color.fromARGB(126, 16, 150, 72),
                              ),
                              child: Center(child: Text("login")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "forgot password?",
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "New User? Create Account",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
