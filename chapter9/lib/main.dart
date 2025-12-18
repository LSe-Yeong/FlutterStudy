import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyParent()
//     );
//   }
// }

// class MyParent extends StatelessWidget {
//   const MyParent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: MyStateless(title: "hello, Flutter!"),
//       )
//     );
//   }
// }

// class MyStateless extends StatelessWidget {
//   const MyStateless({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       title,
//       style: const TextStyle(fontSize: 25),
//     );
//   }
// }

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}