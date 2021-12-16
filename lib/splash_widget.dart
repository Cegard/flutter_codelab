import 'package:flutter/material.dart';
import './home_widget.dart';

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

  final Color mainColor;

  const SplashPage(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const secondsOnSplash = 6;

    Future.delayed(const Duration(seconds: secondsOnSplash), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: const [
          _SplashIcon(),
          _SplashSpinner(),
        ],
      ),
    );
  }
}
