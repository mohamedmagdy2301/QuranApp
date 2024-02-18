import 'package:flutter/material.dart';

class JuzTapView extends StatelessWidget {
  const JuzTapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        height: 100,
        width: 100,
        child: Card(
          color: const Color.fromARGB(255, 180, 100, 14),
          child: Column(
            children: [
              const Text("الجزء الاول "),
              const Text("سورة الفاتحة"),
            ],
          ),
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          shape: const CircleBorder(),
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          semanticContainer: true,
        ),
      ),
    );
  }
}
