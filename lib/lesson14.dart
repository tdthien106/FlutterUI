import 'package:flutter/material.dart';

class lesson14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            element1(),
            element2(),
          ],
        ),
      ),
    );
  }
}

Container element2() {
  return Container(
    margin: EdgeInsets.all(32),
    padding: EdgeInsets.all(32),
    height: 150,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
        ),
      ],
    ),
    child: Row(
      children: [
        item1(),
        item2(),
      ],
    ),
  );
}

Expanded item2() {
  return Expanded(
    child: Wrap(
      runSpacing: 10,
      children: [
        Container(
          margin: EdgeInsets.only(left: 32),
          color: Colors.green,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 32),
          color: Colors.green,
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 32),
          color: Colors.green,
          height: 20,
        ),
      ],
    ),
  );
}

Container item1() {
  return Container(
    color: Colors.black,
    width: 60,
  );
}

Container element1() {
  return Container(
    margin: EdgeInsets.all(32),
    padding: EdgeInsets.all(16),
    height: 300,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.red,
        ),
      ],
    ),
    child: Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 255, 185, 9),
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 185, 9),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 85,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.purple,
                  height: 95,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 95,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------

// Container row2() {
//   return Container(
//     margin: EdgeInsets.all(32),
//     padding: EdgeInsets.all(16),
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Colors.black,
//         width: 2,
//       ),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     child: Column(
//       children: [
//         row21(),
//         row22(),
//         row23(),
//         row24(),
//       ],
//     ),
//   );
// }

// Row row24() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.orange,
//           height: 30,
//         ),
//       ),
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.cyan,
//           height: 30,
//         ),
//       ),
//     ],
//   );
// }

// Row row23() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.black,
//           height: 30,
//         ),
//       ),
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.red,
//           height: 30,
//         ),
//       ),
//     ],
//   );
// }

// Row row22() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.purple,
//           height: 30,
//         ),
//       ),
//       Expanded(
//         flex: 5,
//         child: Container(
//           color: Colors.yellow,
//           height: 30,
//         ),
//       ),
//     ],
//   );
// }

// Row row21() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 9,
//         child: Container(
//           color: Colors.green,
//           height: 30,
//         ),
//       ),
//       Expanded(
//         flex: 1,
//         child: Container(
//           color: Colors.blue,
//           height: 30,
//         ),
//       ),
//     ],
//   );
// }

// Row row1() {
//   return Row(
//     children: [
//       Expanded(
//         flex: 1,
//         child: Container(
//           height: 60,
//           color: Colors.red,
//         ),
//       ),
//       Expanded(
//         flex: 6,
//         child: Container(
//           height: 60,
//           color: Colors.yellow,
//         ),
//       ),
//       Expanded(
//         flex: 1,
//         child: Container(
//           height: 60,
//           color: Colors.red,
//         ),
//       ),
//     ],
//   );
// }

//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------
//---------------------------------------

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

