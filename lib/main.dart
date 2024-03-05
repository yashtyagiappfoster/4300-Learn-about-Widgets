import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widegts',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Basic Widgets Flutter'),
            centerTitle: true,
            actions: [
              IconButton(
                tooltip: 'Settings',
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      color: Colors.green,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.pink,
                      child: const Center(child: Text('Welcome')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Welcome to the Login Page',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      suffixIcon: const Icon(Icons.clear),
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      suffixIcon: const Icon(Icons.clear),
                      labelText: 'Email',
                      hintText: 'Enter your email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'LogIn',
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'SignUp',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Home Section');
                      },
                      child: const Icon(
                        Icons.home,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Profile Section');
                      },
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Home Section');
                      },
                      child: const Icon(
                        Icons.home,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
