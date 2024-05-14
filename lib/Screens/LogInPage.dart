import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 25,
                ),
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    // color: Colors.grey,
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                )),
              ),
              const Text(
                'Welcome Back ,',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Make it work , Make it right,Make it fast',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.red),
                  ),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: '  E-Mail',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  prefixIcon: Icon(Icons.fingerprint_rounded),
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 344,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )),
              ),
              const SizedBox(
                height: 15,
                width: 10,
              ),
              const Center(child: Text('OR')),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: 344,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.jpg',
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Sing-in with Google',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Singup',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
