import 'package:flutter/material.dart'; //Imports a huge collection of pre-made widgets

// MAIN FUNCTION
// This is where the program will start executing
//
void main() {
  // runApp() = A global function which takes a single widget as it's arguement
  //  - will inflate that widget to the screen
  runApp(MyApp());
}

//
// Custom Widget that will be passed to 'MyApp()'
//
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Build Method = Method which returns a widget, is called everytime flutter needs to rebuild the UI
  // - e.g. when your data changes
  // - Describes the UI
  @override
  Widget build(BuildContext context) {
    // MaterialApp = Widget used as a root of the application
    //  - Allows us to configure themes and routes
    return MaterialApp(
      // Scaffold = A key layout component (container) that allows you to build screens with common UI elements
      //  - e.g. like an AppBar at the top of an application
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Gerson Is tougher than the Roaring Knight!"),
        ),
        // Body = Primary content of the scaffold
        body: Column(
            children: [ 
              const Icon(Icons.egg),
              const Icon(Icons.video_call),
              const Icon(Icons.dark_mode),
              // Container = A highly versatile widget that functions much like a multi-purpose box in your app's interface
              //  - i.e. it's like 'div' in html
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: 300,
                width: 300,
                decoration: BoxDecoration(border: Border.all(), color: Colors.purple),
                child: const Text("[Insert Funny Joke Here]"),
              ),
            ],
        ),
      ),
    );
  }
}
