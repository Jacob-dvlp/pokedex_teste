import 'package:flutter/material.dart';

import '../core/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        message: 'TEST',
        color: Colors.blue,
        location: BannerLocation.topEnd,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokedex Test',
          home: SplashPage(
            initialRoute: '',
          ),
        ),
      ),
    );
  }
}
