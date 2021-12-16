import 'package:flutter/material.dart';
final Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      )
  );
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: mainColor,
        child: Stack(
          children: const [
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.terrain, color: Colors.white, size: 90),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
            )
          ],
        )
    );
  }
}
