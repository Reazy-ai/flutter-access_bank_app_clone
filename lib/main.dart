import 'package:access_app_clone/screens/home_screen.dart';
import 'package:access_app_clone/screens/menu_screen.dart';
import 'package:access_app_clone/screens/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import './screens/auth_screen.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue[900],
            fontFamily: 'Lato',
            iconTheme: const IconThemeData(color: Colors.white, size: 25),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.blue[900],
              selectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          home: const AuthenticationScreen(),
          routes: {
            MenuScreen.routeName: (context) => const MenuScreen(),
            HomeScreen.routeName: (context) => const HomeScreen(),
            SupportScreen.routeName: (context) => const SupportScreen(),
          },
        );
      },
    );
  }
}
