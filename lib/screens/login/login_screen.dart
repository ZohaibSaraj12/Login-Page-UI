import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isClicked = true;
  bool obscureText = true;
  bool valueCheckBox = false;
  bool showAnimation = false;

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        showAnimation = true;
      });

      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          showAnimation = false;
        });

        // Optional: Navigate or show snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login Successful!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
            elevation: 20.0,
            margin: EdgeInsets.only(bottom: 20.0, right: 20.0, left: 20.0),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -60,
          left: -60,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.green.withAlpha(170), blurRadius: 4),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),

        Positioned(
          top: -130,
          left: -130,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.green.withAlpha(170), blurRadius: 10),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -60,
          right: -60,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.red.withAlpha(170), blurRadius: 4),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -130,
          right: -130,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.red.withAlpha(170), blurRadius: 10),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),

        Positioned(
          bottom: -60,
          left: -60,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.withAlpha(170),
                  blurRadius: 4,
                ),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -130,
          left: -130,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.withAlpha(170),
                  blurRadius: 10,
                ),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -60,
          right: -60,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.indigo.withAlpha(170), blurRadius: 4),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -130,
          right: -130,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.indigo.withAlpha(170), blurRadius: 10),
              ],

              shape: BoxShape.circle,
            ),
          ),
        ),
        ListView(
          children: [
            SizedBox(height: 170),
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 30.0, fontFamily: "YB"),
                  ),
                  SizedBox(height: 20.0),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "e-mail",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "YB",
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 13.0),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,

                            controller: email,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Your e-mail",
                              prefixIcon: Icon(Icons.email_outlined),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  width: 3.0,
                                  color: Colors.grey,
                                ),
                              ),

                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  width: 3.0,
                                  color: Colors.red,
                                ),
                              ),

                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter a valid email";
                              }
                              if (!value.contains("@")) {
                                return "you are missing @ enter a valid email";
                              }
                              if (!value.contains("gmail")) {
                                return "you are missing gmail word";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "YB",
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 13.0),
                          TextFormField(
                            obscureText: obscureText,
                            keyboardType: TextInputType.text,
                            controller: password,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Your password",
                              prefixIcon: Icon(Icons.key_outlined),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isClicked = !isClicked;
                                    obscureText = !obscureText;
                                  });
                                },
                                icon: Icon(
                                  isClicked == true
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  width: 3.0,
                                  color: Colors.grey,
                                ),
                              ),

                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  width: 3.0,
                                  color: Colors.red,
                                ),
                              ),

                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a valid password";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,

                          side: BorderSide(color: Colors.red, width: 3.0),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Registration Successful!'),
                                backgroundColor: Colors.green,
                                duration: Duration(seconds: 2),
                                behavior: SnackBarBehavior.floating,
                                elevation: 20.0,
                                margin: EdgeInsets.only(
                                  bottom: 20.0,
                                  right: 20.0,
                                  left: 20.0,
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 20.0, fontFamily: "YB"),
                        ),
                      ),
                      SizedBox(width: 35),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.red,

                          elevation: 10.0,
                          side: BorderSide(
                            color: Colors.deepOrange,
                            width: 2.0,
                          ),
                        ),
                        onPressed: submitForm,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "YN",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: valueCheckBox,
                        onChanged: (context) {
                          setState(() {
                            valueCheckBox = !valueCheckBox;
                          });
                        },
                        checkColor: Colors.white,
                        focusColor: Colors.black,
                        activeColor: Colors.green,
                        // fillColor: WidgetStatePropertyAll(Colors.transparent),
                        side: BorderSide(color: Colors.grey, width: 2.0),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: "YN",
                            fontWeight: FontWeight.w600,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      SizedBox(width: 74.0),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: "YN",
                            color: Colors.black12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        // Lottie overlay
       
      ],
    );
  }
}
