import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home : const Buttons(),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              style : ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                foregroundColor: Colors.black,
                fixedSize: const Size(200,30),
                elevation: 0
              ),
              child: const Text(
                "Elevated button",
              ),
            ),
            OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 2.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                fixedSize: const Size(250,30)
              ),
              child: const Text("Outlined Button"),
            ),
            FilledButton(
              onPressed: (){},
              style: FilledButton.styleFrom(
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                fixedSize: const Size(200,30),
              ),
              child: const Text("Filled Button"),
            ),
            FilledButton(
              onPressed: (){},
              child: Container(
                width: 150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue,Colors.red] 
                  ),
                ),
                child: const Text(
                  "Filled Button",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            FilledButton.tonal(
              onPressed: (){}, 
              style: FilledButton.styleFrom(
                foregroundColor: Colors.red
              ),
              child: const Text("Next"),
            ),
            TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                foregroundColor: Colors.deepPurple,
                backgroundColor: const Color.fromARGB(255, 183, 39, 223)
              ),
              child: const Text("Text Button"),
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.home_rounded,
                size: 40,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: const Text(
          "Add",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}