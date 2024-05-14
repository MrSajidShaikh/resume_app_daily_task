import 'package:flutter/material.dart';
import '../../utils/Globals.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

TextEditingController txtPassword = TextEditingController();

GlobalKey<FormState> FormKey = GlobalKey();

class _PasswordScreenState extends State<PasswordScreen> {
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
                        'Hi User',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.1),
                      const Text(
                        "To continue, first verify that it's you",
                        style: TextStyle(fontFamily: 'poppins'),
                      ),
                      SizedBox(height: height * 0.07),
                      SizedBox(
                        height: height * 0.1,
                        width: width * 0.33,
                        child: TextFormField(
                          obscureText: (hideOrNot) ? true : false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a password!';
                            } else if (value.contains(' ')) {
                              return 'Space is not Allow !';
                            } else if (value.length <= 8) {
                              return 'Password length must be greater then 8';
                            }

                            for (int i = 0; i < value.length; i++) {
                              if (value[i] != value[i].toLowerCase()) {
                                checkCapital = true;
                              }
                              if (value[i] != value[i].toUpperCase()) {
                                checkSmall = true;
                              }
                            }
                            if (!checkCapital) {
                              return 'Minimum 1 character is need capital !';
                            }
                            if (!checkSmall) {
                              return 'Minimum 1 character is need small !';
                            }
                            for (int i = 0; i < value.length; i++) {
                              int charCode = value.codeUnitAt(i);
                              if ((charCode >= 32 && charCode <= 45) ||
                                  (charCode == 47) ||
                                  (charCode >= 58 && charCode <= 64) ||
                                  (charCode >= 91 && charCode <= 96) ||
                                  (charCode >= 123 && charCode <= 126)) {
                                checkSpeChar = true;
                              }
                              if ((charCode >= 48 && charCode <= 57)) {
                                checkDigit = true;
                              }
                            }
                            if (!checkSpeChar) {
                              return 'Minimum 1 character is need Special Character !';
                            }
                            if (!checkDigit) {
                              return 'Minimum 1 character is need Digit !';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Enter your password'),
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            hideOrNot = !hideOrNot;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 18,
                              width: 19,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: (hideOrNot)
                                    ? const Color(0xFF0B57D0)
                                    : null,
                                border: Border.all(
                                  color: (hideOrNot)
                                      ? const Color(0xFF0B57D0)
                                      : Colors.black87,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: (hideOrNot)
                                  ? const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              )
                                  : null,
                            ),
                            const Text(
                              '    Show password',
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
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
                                'Forgot password ?',
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
                                        .pushNamed('/success');
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
