import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _isObscured;

  @override
  void initState() {
    super.initState();

    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'بازگشت',
          style: TextStyle(color: Color(0xff031b36), fontSize: 18.0),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff031b36)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/signup.png'),
                  width: 400.0,
                ),
                SizedBox(height: 30.0),
                Text(
                  'ابجاد حساب کاربری در گذشت',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color(0xff031b36)),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 300.0,
                  height: 45.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: Color(0xff031b36),
                        decorationColor: Colors.white),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'نام کاربری',
                      hintStyle:
                          TextStyle(color: Color(0xff031b36), fontSize: 14.0),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color(0xff031b36),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff031b36),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff49b68e),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 300.0,
                  height: 45.0,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        color: Color(0xff031b36),
                        decorationColor: Colors.white),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'ایمیل',
                      hintStyle:
                          TextStyle(color: Color(0xff031b36), fontSize: 14.0),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                      prefixIcon: Icon(Icons.email_rounded),
                      prefixIconColor: Color(0xff031b36),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff031b36),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff49b68e),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 300.0,
                  height: 45.0,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscured,
                    style: TextStyle(
                        color: Color(0xff031b36),
                        decorationColor: Color(0xff49b68e)),
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
                      prefixIconColor: Color(0xff031b36),
                      hintText: 'رمز عبور',
                      hintStyle:
                          TextStyle(color: Color(0xff031b36), fontSize: 14.0),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff031b36),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff49b68e),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ثبت'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff031b36),
                    foregroundColor: Colors.white,
                    minimumSize: Size(300.0, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
