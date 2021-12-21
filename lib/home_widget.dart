import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final Color mainColor;

  const HomePage(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: mainColor),
        title: Center(
          child: Icon(Icons.terrain, color: mainColor, size: 40),
        ),
        actions: const [
          SizedBox(
            width: 40,
            height: 40,
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(mainColor)
        ],
      ),
    );
  }
}


class HeaderWidget extends StatelessWidget {

  final Color mainColor;

  const HeaderWidget(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/4041082?s=400&u=45a9f1b31712bd81d113126a178713cc7ba7d917&v=4',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, you',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                'Good morning!',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 12,
                )
              )
            ]
          )
        ],
      ),
    );
  }
}