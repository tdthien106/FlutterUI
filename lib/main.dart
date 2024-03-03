//import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mới học Flutter nha'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            row1(),
            row2(),
          ],
        ),
      ),
    );
  }
}

Container row2() {
  return Container(
    margin: EdgeInsets.all(32),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        row21(),
        row22(),
        row23(),
        row24(),
      ],
    ),
  );
}

Row row24() {
  return Row(
    children: [
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.orange,
          height: 30,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.cyan,
          height: 30,
        ),
      ),
    ],
  );
}

Row row23() {
  return Row(
    children: [
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.black,
          height: 30,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.red,
          height: 30,
        ),
      ),
    ],
  );
}

Row row22() {
  return Row(
    children: [
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.purple,
          height: 30,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.yellow,
          height: 30,
        ),
      ),
    ],
  );
}

Row row21() {
  return Row(
    children: [
      Expanded(
        flex: 9,
        child: Container(
          color: Colors.green,
          height: 30,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.blue,
          height: 30,
        ),
      ),
    ],
  );
}

Row row1() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 60,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 6,
        child: Container(
          height: 60,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: 60,
          color: Colors.red,
        ),
      ),
    ],
  );
}

// Row row1() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 2,
//         child: Container(
//           color: Colors.red,
//           height: 120,
//         ),
//       ),
//       Expanded(
//         flex: 1,
//         child: Container(
//           color: Colors.green,
//           height: 120,
//         ),
//       ),
//       Expanded(
//         flex: 2,
//         child: Container(
//           color: Colors.yellow,
//           height: 120,
//         ),
//       ),
//     ],
//   );
// }

// Row row2() {
//   return Row(
//     children: [
//       column1(),
//       column2(),
//       Expanded(
//         child: Container(
//           color: Colors.purple,
//           height: 200,
//         ),
//       ),
//     ],
//   );
// }

// Column column1() {
//   return Column(
//     children: [
//       Container(
//         color: Colors.black,
//         height: 100,
//         width: 60,
//       ),
//       Container(
//         color: Colors.yellow,
//         height: 100,
//         width: 60,
//       ),
//     ],
//   );
// }

// Column column2() {
//   return Column(
//     children: [
//       Container(
//         color: Colors.white,
//         width: 250,
//         height: 50,
//       ),
//       Container(
//         color: Colors.brown,
//         width: 250,
//         height: 50,
//       ),
//       Container(
//         color: Colors.cyan,
//         width: 250,
//         height: 50,
//       ),
//       Container(
//         color: Colors.red,
//         width: 250,
//         height: 50,
//       )
//     ],
//   );
// }
