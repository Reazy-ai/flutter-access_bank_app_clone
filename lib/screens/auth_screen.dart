// import 'package:access_app_clone/screens/nav_screen.dart';
import 'package:access_app_clone/controllers/home_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'home_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Image.asset(
                      'assets/access_logo.jpeg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: Adaptive.h(20)),
              const Text.rich(
                TextSpan(
                  text: 'Welcome back,',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                        text: ' Ridwan',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  // hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5),
                  ),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(Device.width, 50),
                    backgroundColor: Colors.orange[700]),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeBottomNav(),
                    ),
                  );
                },
                child: const Text(
                  'SIGN IN WITH BIOMETRICS',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: Adaptive.px(30),
              ),
              RichText(
                text: TextSpan(
                  text: 'Not Ridwan?',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: ' Unlock device',
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 18,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_outline), label: 'Login'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_outlined),
                label: 'Quick Services'),
            BottomNavigationBarItem(
                icon: Icon(Icons.headset_mic_outlined), label: 'Support'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
