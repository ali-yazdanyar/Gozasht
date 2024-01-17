import 'package:flutter/material.dart';
import 'package:gozasht/introduction_pages/sign_up.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var _isObscured;

  @override
  void initState() {
    super.initState();

    _isObscured = true;
  }

  void navigateToSignUp(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff031b36),
        appBar: AppBar(
          title: Text(
            'بازگشت',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          backgroundColor: Color(0xff031b36),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ورود به حساب کاربری',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Image(
                    image: AssetImage('images/login.png'),
                    width: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 250.0,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          color: Colors.white,
                          decorationColor: Color(0xff031b36)),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'نام کاربری',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 250.0,
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _isObscured,
                      style: TextStyle(
                          color: Colors.white,
                          decorationColor: Colors.blueAccent),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: _isObscured
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                        prefixIconColor: Colors.white,
                        hintText: 'رمز عبور',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.tealAccent,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 250.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(120.0, 40.0),
                            side: BorderSide(
                                color: Colors.blueAccent, width: 1.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            foregroundColor: Colors.blueAccent,
                          ),
                          onPressed: () {
                            navigateToSignUp(context, SignUp());
                          },
                          child: Text('ثبت نام'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('ورود'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xff031b36),
                            minimumSize: Size(120.0, 40.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('hey')
                ],
              ),
            ),
          ),
        ));
  }
}
