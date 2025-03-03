import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpinnerScreen extends StatefulWidget {
  const SpinnerScreen({super.key});

  @override
  State<SpinnerScreen> createState() => _SpinnerScreenState();
}

class _SpinnerScreenState extends State<SpinnerScreen> {
 @override
Widget build(BuildContext context) {

  return CupertinoPageScaffold(
   navigationBar: CupertinoNavigationBar(
  backgroundColor:  Colors.black,
  middle: Text(
    "Spinner", 
    style: TextStyle(
    color:  Colors.deepPurple.shade100,
      fontSize: 20, fontWeight: FontWeight.w600),
  ),
  trailing: CupertinoButton(
    padding: EdgeInsets.zero, 
    onPressed: () {  },
    child: Icon(
      CupertinoIcons.info_circle_fill, 
      color: Colors.deepPurple, 
      size: 26, 
    ),
    
  ),
),

    child: Container(
      decoration: BoxDecoration(
     color: Colors.black
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      placeholder: "Enter a choice...",
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CupertinoButton(
                color: Colors.deepPurple.shade300,
                onPressed: () {  },
                child: const Text("Add Choice", style: TextStyle(color: Colors.white)),
              ),
                ],
              ),
              const SizedBox(height: 10),
              CupertinoSlider(
                value: 1,
                min: 1,
                max: 10,
                divisions: 9,
                activeColor: Colors.deepPurple.shade400, 
                onChanged: (double value) {  },
              ),
              Text("Spin Duration: ", textAlign: TextAlign.center),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:  Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ),
  );
}
}