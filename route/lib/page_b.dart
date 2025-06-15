import 'package:flutter/material.dart';
import 'package:route/main.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Page B"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page B Screen",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  )
                );
              },
              child: const Text("Go to Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}