import 'package:flutter/material.dart';

void main() {
  runApp(const UserInfoApp());
}

class UserInfoApp extends StatelessWidget {
  const UserInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const UserInfoScreen(),
    );
  }
}

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final Map<String, String> userInfo = {};

  void _setUserInfo(String field, String value) {
    setState(() {
      userInfo[field] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField("Name", "Enter your name"),
              _buildTextField("Age", "Enter your age"),
              _buildTextField("Gender", "Enter your gender"),
              _buildTextField("Email", "Enter your email"),
              _buildTextField("Phone Number", "Enter your phone number"),
              _buildTextField("Address", "Enter your address"),
              _buildTextField("Occupation", "Enter your occupation"),
              _buildTextField("Education", "Enter your education"),
              _buildTextField("Hobbies", "Enter your hobbies"),
              _buildTextField("Favorite Color", "Enter your favorite color"),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _showUserInfo(context);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String field, String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: field,
          hintText: hint,
        ),
        onChanged: (value) => _setUserInfo(field, value),
      ),
    );
  }

  void _showUserInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("User Information"),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: userInfo.entries.map((entry) {
                return Text("${entry.key}: ${entry.value}");
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
