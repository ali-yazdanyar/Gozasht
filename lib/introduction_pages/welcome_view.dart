import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10.0),
              Text(
                'به گذشت خوش امدید',
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
                onPressed: () {},
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
