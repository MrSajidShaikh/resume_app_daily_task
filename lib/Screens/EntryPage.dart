import 'package:flutter/material.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const SizedBox(height: 30),
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Column(
          children: [
            Text(
              'Build Awesome Apps',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'let\'s put  your creativity on the',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'development highway',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 37,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: Container(
                height: 60,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2)),
                child: const Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                )),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2)),
              child: const Center(
                  child: Text(
                'SIGNUP',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        )
      ]),
    );
  }
}
