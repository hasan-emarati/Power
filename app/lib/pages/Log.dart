import 'package:flutter/material.dart';
import 'package:app/pages/AbutUs.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  State<Log> createState() => _LogPageState();
}

class _LogPageState extends State<Log> {
  bool isSwith = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const AbutUs();
                  },
                ),
              );
              debugPrint("setting");
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text("This is text widget",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isSwith ? Colors.green : Colors.blue),
                onPressed: () {
                  debugPrint("Elevated button");
                },
                child: const Text("Elevated button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined button");
                },
                child: const Text("Outlined button")),
            TextButton(
                onPressed: () {
                  debugPrint("Text button");
                },
                child: const Text("Text button")),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Color.fromARGB(255, 238, 237, 237),
                  ),
                  Text("Row widget"),
                  Icon(Icons.local_fire_department, color: Colors.red),
                ],
              ),
            ),
            Switch(
              value: isSwith,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwith = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/2721/2721273.png',
            ),
          ],
        ),
      ),
    );
  }
}
