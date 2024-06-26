import 'package:flutter/material.dart';

class BloodPressure extends StatelessWidget {
  const BloodPressure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood pressure"),
        backgroundColor: Color.fromARGB(255, 146, 88, 65),
      ),
      backgroundColor: Color.fromARGB(255, 146, 88, 65),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     // colors: [
        //     //   Colors.blue,
        //     //   Colors.red,
        //     // ],
        //   ),
        // ),
        // MediaQuery.of(context).size.width * 0.99999, // 60% of screen width
        // height:100%,
        // MediaQuery.of(context).size.width * 0.99999, // 60% of screen width
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "data:image/jpeg;base64,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",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Text widget with description
            const Text(
              "Blood pressure is in healthy state, keep up the good work.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
