import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff357a38),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    height: 150,
                    width: 150,
                    image: AssetImage('images/islam360.jpeg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Text(
                'Log in',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Center(
                  child: Text('Connect Yourself\n with Islam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'NotoSans',
                        fontWeight: FontWeight.w400,
                      ))),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.mail_outline_rounded),
                    fillColor: const Color(0xff449e48),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff449e48),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock_open_outlined),
                    fillColor: const Color(0xff449e48),
                    filled: true,
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff449e48),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 230),
                child: Text('Forget Password?'),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color(0xff449e48),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Sign in',
                  style: TextStyle(fontFamily: 'NotoSans', fontSize: 20),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Dont have an account',
                    style: TextStyle(fontSize: 15, fontFamily: 'NotoSans'),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Sign in?',
                      style: TextStyle(fontSize: 15, fontFamily: 'NotoSans')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
