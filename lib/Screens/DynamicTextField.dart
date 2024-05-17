import 'package:flutter/material.dart';

class DynamicTextField extends StatefulWidget {
  const DynamicTextField({super.key});

  @override
  State<DynamicTextField> createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dynamic TextField'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              txtControllerList.length,
              (index) => ListTile(
                title: TextField(
                  controller: txtControllerList[index],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        TextEditingController txtController =
                            TextEditingController();
                        setState(() {
                          txtControllerList.add(txtController);
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle_outline_outlined,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          txtControllerList.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.remove_circle_outline_outlined,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String skills = txtController.text;
          for (int i = 1; i < txtControllerList.length; i++) {
            skills = skills + " " + txtControllerList[i].text;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(skills),
            ),
          );
        },
        child: const Icon(Icons.slideshow_outlined),
      ),
    );
  }
}

TextEditingController txtController = TextEditingController();

List<TextEditingController> txtControllerList = [
  txtController,
];
