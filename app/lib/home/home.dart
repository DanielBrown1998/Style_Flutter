import 'package:flutter/material.dart';
import 'package:app/home/header/header.dart';
import 'package:app/common/box.dart';
import 'package:app/common/recent_activity.dart';
import 'package:app/common/content_division.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RecentActivity(
                            color: Theme.of(context).canvasColor,
                            label: "Saida",
                            text: "R\$ 1380.93",
                          ),
                          RecentActivity(
                            color: Theme.of(context).hintColor,
                            label: "Entrada",
                            text: "R\$ 2000.00",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        "Limite restante R\$ ${(2000 - 1380.93).roundToDouble()}",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: LinearProgressIndicator(
                        color: Theme.of(context).hintColor,
                        backgroundColor: Theme.of(context).dividerColor,
                        value: 1 - (2000 - 1380.93) / 2000,
                        borderRadius: BorderRadius.circular(8),
                        minHeight: 15,
                      ),
                    ),
                    ContentDivision(color: Theme.of(context).dividerColor),
                    Text(
                      "Esse mes, voce concentrou seus gastos em restaurantes!",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Diga-me como",
                        style: TextStyle(color: Theme.of(context).hintColor),
                      ),
                    ),
                  ],
                ),
              ),
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
