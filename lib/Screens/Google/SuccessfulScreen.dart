import 'package:flutter/material.dart';
import '../../utils/Globals.dart';
import 'EmailScreen.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({super.key});

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD9EEFF),
        body: Form(
          key: FormKey,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: height * 0.6,
              width: width * 0.7,
              padding: const EdgeInsets.fromLTRB(26, 26, 26, 27),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        alignment: Alignment.centerLeft,
                        height: 50,
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        'Simplify your sign in',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'poppins'),
                      ),
                      const SizedBox(height: 17),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 6, right: 8),
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(), shape: BoxShape.circle),
                              child: const Icon(
                                Icons.person,
                                size: 22,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              email,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.05),
                      Image.asset(
                        'assets/images/img.jpeg',
                        alignment: Alignment.centerLeft,
                        height: 150,
                      ),
                      SizedBox(height: height * 0.025),
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text:
                            "With passkeys, you can now use your fingerprint, face or screen lock to verify\nthat it's really you\n\n",
                            style: TextStyle(fontFamily: 'poppins'),
                          ),
                          TextSpan(
                            text:
                            "Only create a passkey if this is your device. ",
                            style: TextStyle(fontFamily: 'poppins'),
                          ),
                          TextSpan(
                            text: "Learn more",
                            style: TextStyle(
                                fontFamily: 'poppins', color: Colors.blue),
                          ),
                        ],
                      )),
                      const Spacer(),
                      SizedBox(
                        width: width * 0.33,
                        child: Row(
                          children: [
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Not now ',
                                style: TextStyle(
                                    color: Color(0xFF0E4EB5),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(width: 18),
                            FilledButton(
                              onPressed: () {
                                setState(() {
                                  bool response =
                                  FormKey.currentState!.validate();
                                  if (response) {
                                    Navigator.of(context)
                                        .pushNamed('/LoginSuccess');
                                  }
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    const Color(0xFF0A58D0)),
                              ),
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}