import 'package:flutter/material.dart';
// import 'dart:async';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   // is not restarted.
//       //   primarySwatch: Colors.blue,
//       // ),
//       home: MyHomePage(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Terceira página"),
//       ),
//       body: Center(
//           child: Column(children: [
//         ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ThreeScreen()),
//             );
//           },
//           child: Text('Ir para a página 3 ->'),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pop();
//           },
//           child: Text('<- Voltar para a página 2'),
//         ),
//       ])),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 10;
//   late Timer _timer;
//   // _timer = 10;
//   // void _incrementCounter() {
//   //   setState(() {
//   //     _counter++;
//   //   });
//   // }
//   void _startTimer() {
//     _counter = 10;

//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         if (_counter > 0) {
//           _counter--;
//         } else {
//           _timer.cancel();
//         }
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     _startTimer();
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Wait for it'),
//       // ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('Legend', style: TextStyle(fontSize: 45)),
//             const Text('Wait for it', style: TextStyle(fontSize: 45)),

//             (_counter > 0)
//                 ? const Text('')
//                 : const Text('DARY!!!',
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 48)),
//             Text('$_counter', style: const TextStyle(fontSize: 48)),

//             // Text(
//             //   '$_counter',
//             //   style: Theme.of(context).textTheme.headline4,
//             // ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _startTimer(),
//         // tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
