import 'package:flutter/material.dart';

class FlutterLoginPage extends StatelessWidget {
  const FlutterLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter Login Page")),
        body: Column(children: [
          const Spacer(flex: 6),
          Center(
            child: Container(
              width: ContainerSizes().containerwidth,
              height: ContainerSizes().containerheight,
              padding: const EdgeInsets.only(top: 40),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(200)),
              child: Center(child: flutterloginimage().assetImage),
            ),
          ),
          const Spacer(flex: 8),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mail',
                    hintText: 'Enter Your Email'),
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      /* icon: Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Icon(Icons.lock)), to visible of innisible password*/
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Your Password'),
                ),
              )),
          const Spacer(flex: 7),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, bottom: 20, top: 20)),
              child: const Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ),
        ]));
  }
}

class ContainerSizes {
  final double containerwidth = 200;
  final double containerheight = 150;
}

class flutterloginimage {
  final assetImage = Image.asset('assets/flutter-logo.png');
}
