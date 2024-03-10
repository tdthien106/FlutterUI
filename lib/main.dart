//import 'dart:html';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mới học Flutter nha'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _bar(),
                const SizedBox(
                  height: 32,
                ),
                _location(),
                const SizedBox(
                  height: 16,
                ),
                _state(),
                const SizedBox(
                  height: 16,
                ),
                _temperature(),
                const SizedBox(
                  height: 16,
                ),
                _getStatusData(),
                const SizedBox(
                  height: 16,
                ),
                _getWeatherData(),
                const SizedBox(
                  height: 16,
                ),
                _forecast(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForecastData {
  final String time;
  final String image;
  final String temperature;

  const ForecastData({
    required this.time,
    required this.image,
    required this.temperature,
  });
}

Widget _buildForecast(ForecastData data) {
  return Column(
    children: [
      Text(
        data.time,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
      Image.asset(
        data.image,
        width: 24,
        height: 23.5,
      ),
      Text(data.temperature),
    ],
  );
}

Container _forecast() {
  final List<ForecastData> forecastData = [
    const ForecastData(
      time: '0 AM',
      image: 'assets/images/snow.png',
      temperature: '32°C',
    ),
    const ForecastData(
      time: '1 AM',
      image: 'assets/images/snow.png',
      temperature: '32°C',
    ),
    const ForecastData(
      time: '2 AM',
      image: 'assets/images/snow.png',
      temperature: '32°C',
    ),
    const ForecastData(
      time: '3 AM',
      image: 'assets/images/snow.png',
      temperature: '32°C',
    ),
  ];
  return Container(
    width: 380,
    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.4),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 16,
            ),
            Text(' FORECAST'),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        const Divider(
          height: 1,
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Max: 36.4°C',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Text(
              'Min: 22.1°C',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (final item in forecastData) ...{_buildForecast(item)}
          ],
        ),
      ],
    ),
  );
}

class _WeatherData {
  final String text;
  final double value;
  final String unit;

  const _WeatherData(this.text, this.value, this.unit);
}

Widget _buildWeatherItem(_WeatherData data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        data.text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        width: 10,
      ),
      Row(
        children: [
          Text(
            data.value.toString(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            data.unit,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ],
  );
}

Container _getWeatherData() {
  final List<_WeatherData> leftColumnData = [
    const _WeatherData('Humidity ', 40.0, '%'),
    const _WeatherData('PM10 ', 33.4, 'µg/m³'),
    const _WeatherData('UV ', 2.2, ''),
  ];

  final List<_WeatherData> rightColumnData = [
    const _WeatherData('Wind ', 2.0, 'km/h'),
    const _WeatherData('Sunrise', 6.35, 'AM'),
    const _WeatherData('Sunset ', 5.55, 'PM'),
  ];
  return Container(
    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
    width: 380,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.4),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in leftColumnData) ...[
                //Xử lý spacing
                _buildWeatherItem(item),
                const SizedBox(
                  height: 20,
                ),
                //...leftColumnData.map(_buildWeatherItem).toList(), //Khi in ra các text không cách dòng
              ],
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //...rightColumnData.map(_buildWeatherItem).toList(), //Khi in ra các text không cách dòng
              for (final item in rightColumnData) ...[
                //Xử lý spacing
                _buildWeatherItem(item),
                const SizedBox(
                  height: 20,
                ),
              ],
            ],
          ),
        )
      ],
    ), // Khoảng cách giữa hai cột
  );
}

Container _getStatusData() {
  return Container(
    height: 100,
    width: 358,
    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
    child: const Text(
      'Duststorm, sandstorm, drifting or blowing snow',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    ),
  );
}

Text _temperature() {
  return const Text(
    '32°C',
    style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
  );
}

Column _state() {
  return Column(
    children: [
      Image.asset('assets/images/image 2.png', height: 120, width: 120),
      const SizedBox(
        height: 8,
      ),
      const Text(
        'Soft light',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    ],
  );
}

Row _location() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Ho Chi Minh City',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
    ],
  );
}

Row _bar() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('      '),
      Text(
        '10.82, 206.24',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ],
  );
}

// Container element2() {
//   return Container(
//     margin: const EdgeInsets.all(32),
//     padding: const EdgeInsets.all(32),
//     height: 150,
//     decoration: const BoxDecoration(
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey,
//         ),
//       ],
//     ),
//     child: Row(
//       children: [
//         item1(),
//         item2(),
//       ],
//     ),
//   );
// }

// Expanded item2() {
//   return Expanded(
//     child: Wrap(
//       runSpacing: 10,
//       children: [
//         Container(
//           margin: const EdgeInsets.only(left: 32),
//           color: Colors.green,
//           height: 20,
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 32),
//           color: Colors.green,
//           height: 20,
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 32),
//           color: Colors.green,
//           height: 20,
//         ),
//       ],
//     ),
//   );
// }

// Container item1() {
//   return Container(
//     color: Colors.black,
//     width: 60,
//   );
// }

// Container element1() {
//   return Container(
//     margin: const EdgeInsets.all(32),
//     padding: const EdgeInsets.all(16),
//     height: 300,
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Colors.red,
//       ),
//       borderRadius: BorderRadius.circular(16),
//       boxShadow: const [
//         BoxShadow(
//           color: Colors.red,
//         ),
//       ],
//     ),
//     child: Container(
//       margin: const EdgeInsets.all(8),
//       padding: const EdgeInsets.all(32),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: const Color.fromARGB(255, 255, 185, 9),
//         ),
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: const [
//           BoxShadow(
//             color: Color.fromARGB(255, 255, 185, 9),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   color: Colors.blue,
//                   alignment: Alignment.center,
//                   height: 85,
//                   child: const Text(
//                     "Hello Flutter Trinh Duc Thien",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   height: 95,
//                   color: Colors.purple,
//                   child: const Icon(
//                     Icons.chevron_left,
//                     size: 56,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   color: Colors.green,
//                   height: 95,
//                   child: Image.asset('assets/images/Location.png'),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }

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
