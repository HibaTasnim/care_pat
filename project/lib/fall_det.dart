import 'package:flutter/material.dart';
import 'package:project/provider/control.dart';
import 'package:provider/provider.dart';

class FallDetection extends StatelessWidget {
  const FallDetection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fall Detection"),
        backgroundColor:
            const Color.fromARGB(255, 146, 88, 65), // Change the color as desired
      ),
      backgroundColor:
          const Color.fromARGB(255, 146, 88, 65), // Change the color as desired
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/fall.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Text widget with description
             Consumer<Loginprovider>(
               builder: (context,value,child) {
                 return value.falldetection ?Text(
                  "There is a high likelihood of falling.",style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                  ):Text("Patient is safe with no risk of falling. Relax, we're watching over them closely.",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,);
               }
             ),
          ],
        ),
      ),
    );
  }
}
