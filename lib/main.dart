import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      )
  );
}


class _SplashIcon extends StatelessWidget {

  const _SplashIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Align(
      alignment: Alignment.center,
      child: Icon(Icons.terrain, color: Colors.white, size: 90),
    );
  }
}


class _SplashSpinner extends StatelessWidget{

  const _SplashSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: const EdgeInsets.only(bottom: 80),
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
        )
    );
  }
}


class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        color: mainColor,
        child: Stack(
          children: const [
            _SplashIcon(),
            _SplashSpinner(),
          ],
        )
    );
  }
}
