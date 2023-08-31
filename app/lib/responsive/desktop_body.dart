import 'package:flutter/material.dart';
import 'package:app/pages/setting.dart';
import 'package:app/pages/Log.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  get itemBuilder => 10;
  bool isSwith = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(187, 117, 58, 168),
      appBar: AppBar(
        title: const Text(
          'D E S K T O P - SHe - A p p',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'avenir',
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Log();
                  },
                ),
              );
              debugPrint("Log");
            },
            icon: const Icon(Icons.system_security_update_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Settings();
                  },
                ),
              );
              debugPrint("setting");
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: Row(
            children: [
              // First column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        // youtube video
                        AspectRatio(
                          aspectRatio: 20 / 7,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(161, 73, 6, 136),
                                  Color.fromARGB(161, 109, 52, 156),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  height: 240,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 82, 91, 224),
                                        Color.fromARGB(160, 52, 68, 156),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(30),
                                  height: 90,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(159, 87, 0, 122),
                                        Color.fromARGB(159, 57, 0, 122),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 250,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(159, 130, 49, 168),
                                              Color.fromARGB(161, 109, 52, 156),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 130,
                                        child: Expanded(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary: const Color.fromARGB(
                                                  187, 18, 88, 0),
                                            ),
                                            child: const Text(
                                              "Reset",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                fontFamily: 'avenir',
                                                color: Color.fromARGB(
                                                    220, 255, 245, 72),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(159, 130, 49, 168),
                                              Color.fromARGB(161, 109, 52, 156),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 130,
                                        child: Expanded(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Color.fromARGB(186, 0, 0, 0),
                                            ),
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                fontFamily: 'avenir',
                                                color: Color.fromARGB(
                                                    220, 255, 245, 72),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(159, 130, 49, 168),
                                              Color.fromARGB(161, 109, 52, 156),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 130,
                                        child: Expanded(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary: const Color.fromARGB(
                                                  187, 18, 88, 0),
                                            ),
                                            child: const Text(
                                              "-",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 25,
                                                fontFamily: 'avenir',
                                                color: Color.fromARGB(
                                                    220, 255, 245, 72),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color.fromARGB(159, 130, 49, 168),
                                              Color.fromARGB(161, 109, 52, 156),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 130,
                                        child: Expanded(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary: const Color.fromARGB(
                                                  187, 18, 88, 0),
                                            ),
                                            child: const Text(
                                              "Hold",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 18,
                                                fontFamily: 'avenir',
                                                color: Color.fromARGB(
                                                    220, 255, 245, 72),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(159, 130, 49, 168),
                                Color.fromARGB(161, 109, 52, 156),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 245,
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(224, 103, 49, 146),
                                      Color.fromARGB(224, 83, 40, 117),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'USART Connection',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          fontFamily: 'avenir',
                                          color:
                                              Color.fromARGB(225, 255, 245, 72),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 255, 245, 72),
                                    ),
                                    Text(
                                      '\r\nbaudrate : 1200\r\ndelay : 2ms\r\nCUM : 2\r\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'avenir',
                                        color:
                                            Color.fromARGB(220, 255, 245, 72),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 200,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(224, 103, 49, 146),
                                      Color.fromARGB(224, 83, 40, 117),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'Voltage',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          fontFamily: 'avenir',
                                          color:
                                              Color.fromARGB(220, 255, 245, 72),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color.fromARGB(255, 255, 245, 72),
                                    ),
                                    Text(
                                      '\r\nMax Voltage : 32.7\r\nPart Voltage : 0.27\r\nMode : USART\r\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'avenir',
                                        color:
                                            Color.fromARGB(220, 255, 245, 72),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 200,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(224, 103, 49, 146),
                                      Color.fromARGB(224, 83, 40, 117),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Voltage',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          fontFamily: 'avenir',
                                          color:
                                              Color.fromARGB(220, 255, 245, 72),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                        color:
                                            Color.fromARGB(255, 255, 245, 72)),
                                    Text(
                                      '\r\nMax Voltage : 32.7\r\nPart Voltage : 0.27\r\nMode : USART\r\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'avenir',
                                        color:
                                            Color.fromARGB(220, 255, 245, 72),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 200,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(224, 103, 49, 146),
                                      Color.fromARGB(224, 83, 40, 117),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'Voltage',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          fontFamily: 'avenir',
                                          color:
                                              Color.fromARGB(220, 255, 245, 72),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                        color:
                                            Color.fromARGB(255, 255, 245, 72)),
                                    Text(
                                      '\r\nMax Voltage : 32.7\r\nPart Voltage : 0.27\r\nMode : USART\r\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: 'avenir',
                                        color:
                                            Color.fromARGB(220, 255, 245, 72),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // comment section & recommended videos
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(146, 35, 34, 110),
                                Color.fromARGB(255, 139, 32, 103),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 60,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  padding: const EdgeInsets.all(1.0),
                                  // ignore: sort_child_properties_last
                                  child: const Icon(
                                    Icons.usb,
                                    size: 35,
                                    color: Colors.white70,
                                  ),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 22, 119, 3),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                child: const Text(
                                  'connected!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    fontFamily: 'avenir',
                                    color: Color.fromARGB(220, 255, 255, 255),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Builder(builder: (context) {
                                  return Switch(
                                    focusColor: Colors.red,
                                    activeColor: Colors.green,
                                    inactiveTrackColor: Colors.red,
                                    hoverColor:
                                        const Color.fromARGB(52, 68, 137, 255),
                                    value: isSwith,
                                    onChanged: (bool newBool) {
                                      setState(
                                        () {
                                          isSwith = newBool;
                                        },
                                      );
                                    },
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // second column
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Scrollbar(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(161, 109, 52, 156),
                          Color.fromARGB(117, 187, 0, 212),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 200,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 244, 67, 54),
                                  Color.fromARGB(200, 233, 30, 98),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(0.5),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(0.0),
                                    child: const Center(
                                      child: Text(
                                        'CUM!!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'avenir',
                                          color: Color.fromARGB(220, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Checkbox(
                                    activeColor:
                                        const Color.fromARGB(255, 4, 17, 206),
                                    value: isCheckbox,
                                    onChanged: (bool? newBool) {
                                      setState(
                                        () {
                                          isCheckbox = newBool;
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
