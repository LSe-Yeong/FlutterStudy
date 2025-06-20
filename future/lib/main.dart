import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<String>? futureData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Future test"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                setState(() {
                  futureData = myFuture();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Future test",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ),
            const SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: futureData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    snapshot.data!,
                    style: const TextStyle(fontSize: 20),
                  );
                } else if (snapshot.connectionState == ConnectionState.none) {
                  return const Text(
                    'Press the button to fetch the Future Data',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      )
    );
  }

  Future<String> myFuture() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Future completed';
  }
}