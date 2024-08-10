import 'package:flutter/material.dart';
import 'package:pokedex_test/shared/assets/assets.dart';

class SplashPage extends StatefulWidget {
  final String initialRoute;
  const SplashPage({super.key, required this.initialRoute});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _controller,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(height: 80, fit: BoxFit.cover, Assets.pokemonLogo),
              const SizedBox(height: 100),
              AnimatedBuilder(
                animation: _colorAnimation,
                builder: (context, child) {
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(_colorAnimation.value),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
