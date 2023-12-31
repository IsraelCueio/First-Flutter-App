import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(color: Colors.black),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          ElevatedButton(
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated button')),
          OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'))
        ],
      ),
    );
  }
}
