import 'package:flutter/material.dart';
import 'package:gozasht/introduction_pages/login_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  void navigateToLoginView(BuildContext context, Widget page) {
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10.0),
              Text(
                'به "گذشت" خوش امدید',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
              Image(
                image: AssetImage('images/welcome.png'),
              ),
              Text(
                'اپلیکیشن گذشت ٬ دستیار شخصی و \n آنلاین برای نگهداری خودرو و یادآوری تعویض \n به موقع قطعات خودروی شما',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
              OutlinedButton(
                onPressed: () {
                  navigateToLoginView(context, LoginView());
                },
                child: Text('ادامه'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 2.0),
                  foregroundColor: Colors.white,
                  minimumSize: Size(150.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
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
