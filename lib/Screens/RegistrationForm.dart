import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;
TextEditingController txtsurname = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtdate = TextEditingController();
TextEditingController txtnumber = TextEditingController(text: '+91 ');

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Registration Form',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 55,
                  backgroundImage:
                      (fileImage != null) ? FileImage(fileImage!) : null,
                  child: (fileImage != null)
                      ? null
                      : Image.asset(
                          'assets/images/Dp.png'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () async {
                        XFile? xfile = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          fileImage = File(xfile!.path);
                        });
                      },
                      icon: const Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () async {
                        XFile? xfile = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(xfile!.path);
                        });
                      },
                      icon: const Icon(
                        Icons.image,
                        size: 30,
                        color: Colors.blue,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtsurname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value required';
                    }
                    // if (!RegExp(r'\d').hasMatch(value))
                    if (RegExp(r'\d').hasMatch(value)) {
                      return 'Entre Only Text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text(
                      'SurName',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value required';
                    }
                    // if (!RegExp(r'\d').hasMatch(value))
                    if (RegExp(r'\d').hasMatch(value)) {
                      return 'Entre Only Text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text(
                      'Name',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtdate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text(
                      'DD/MM/YY',
                      style: TextStyle(color: Colors.black),
                    ),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() async {
                            datepicker = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2025));
                            if (datepicker != null) {
                              BirthDate =
                                  '${datepicker!.day}/${datepicker!.month}/${datepicker!.year}';
                              txtdate.text = BirthDate;
                            }
                          });
                        },
                        child: const Icon(Icons.calendar_month_outlined)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: TextFormField(
                  controller: txtnumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'value required';
                    } else if (value.length <= 10) {
                      return '10 digits required ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text(
                      'Mobile Number',
                      style: TextStyle(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 2, color: Colors.blue)),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Text(
                  'Gender',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  const Text(
                    'Male',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Radio(
                    value: 'Female',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  const Text(
                    'Female',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Radio(
                    value: 'Other',
                    groupValue: Gender,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        Gender = value!;
                      });
                    },
                  ),
                  const Text(
                    'Other',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'Hobby',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: hobby[0],
                    onChanged: (value) {
                      setState(() {
                        hobby[0] = value!;
                        if (value == true) {
                          check.add('Reading');
                        } else {
                          check.remove('Reading');
                        }
                      });
                    },
                  ),
                  const Text('Reading'),
                  Checkbox(
                    value: hobby[1],
                    onChanged: (value) {
                      setState(() {
                        hobby[1] = value!;
                        if (value == true) {
                          check.add('Writing');
                        } else {
                          check.remove('Writing');
                        }
                      });
                    },
                  ),
                  const Text('Writing'),
                  Checkbox(
                    value: hobby[2],
                    onChanged: (value) {
                      setState(() {
                        hobby[2] = value!;
                        if (value == true) {
                          check.add('Playing');
                        } else {
                          check.remove('Playing');
                        }
                      });
                    },
                  ),
                  const Text('playing'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      bool res = formkey.currentState!.validate();
                      if (res) {
                        surname = txtsurname.text;
                        number = txtnumber.text;
                        name = txtname.text;
                        BirthDate = txtdate.text;
                        Navigator.of(context).pushNamed('/id');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Enter valid Value!'),
                            action: SnackBarAction(
                              label: 'Retry',
                              onPressed: () {
                                formkey.currentState!.reset();
                              },
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'submit',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> check = [];
String Gender = 'Male';
List<bool> hobby = [false, false, false];
String? surname;
String? name;
String? number;
int selectindex = 0;
DateTime? datepicker;
String BirthDate = "";
