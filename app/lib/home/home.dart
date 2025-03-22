import 'package:flutter/material.dart';
import 'package:app/home/header/header.dart';
import 'package:app/common/box.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(title: widget.title),
            Box(
              child: Column(
                children: [
                Text(
                  "Olá, Fulano",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
