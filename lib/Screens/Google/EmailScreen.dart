import 'package:flutter/material.dart';

import '../../utils/Globals.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();

GlobalKey<FormState> FormKey = GlobalKey();

class _EmailScreenState extends State<EmailScreen> {
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
                        'Sign in',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'poppins'),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        'Use your Google Account',
                        style: TextStyle(fontFamily: 'poppins', fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.1,
                        width: width * 0.33,
                        margin: EdgeInsets.only(top: height * 0.11),
                        child: TextFormField(
                          validator: (value) {
                            bool checkCapital = false;
                            bool checkSpeChar = false;
                            if (value!.isEmpty) {
                              return 'Enter an email or phone number !';
                            } else if (!value.contains('@gmail.com')) {
                              return '"@gmail.com"is not Perfact !';
                            } else if (value.contains(' ')) {
                              return 'Space is not Allow !';
                            } else if (value.length <= 10) {
                              return 'Enter valid e-mail or phone number';
                            }

                            for (int i = 0; i < value.length; i++) {
                              if (value[i] != value[i].toLowerCase()) {
                                checkCapital = true;
                              }
                            }
                            if (checkCapital) {
                              return 'Capital Letter is not Allow !';
                            }
                            for (int i = 0; i < value.length; i++) {
                              int charCode = value.codeUnitAt(i);
                              if ((charCode >= 32 && charCode <= 45) ||
                                  (charCode == 47) ||
                                  (charCode >= 58 && charCode <= 63) ||
                                  (charCode >= 91 && charCode <= 96) ||
                                  (charCode >= 123 && charCode <= 126)) {
                                checkSpeChar = true;
                              }
                            }
                            if (checkSpeChar) {
                              return 'Special character is not Allow !';
                            }
                          },
                          controller: txtEmail,
                          decoration: InputDecoration(
                            label: const Text('E-mail or phone'),
                            labelStyle: const TextStyle(fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xFF0B57D0),
                                width: 1.8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Forgot email ?',
                        style: TextStyle(
                            color: Color(0xFF0E4EB5),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: height * 0.07),
                      const Text(
                        'Not your computer? Use Guest mode to sign in privately. ',
                        style: TextStyle(fontSize: 14),
                      ),
                      const Text(
                        'Learn more about using Guest mode ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0E4EB5),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: width * 0.33,
                        child: Row(
                          children: [
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Create account',
                                style: TextStyle(
                                    color: Color(0xFF0B57D0),
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
                                        .pushNamed('/password');
                                    email = txtEmail.text;
                                  }
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    const Color(0xFF0A58D0)),
                              ),
                              child: const Text(
                                'Next',
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