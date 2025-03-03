import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
      return CupertinoPageScaffold(
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
           color: Colors.black
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    "Welcome to Spinner!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color:  CupertinoColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Not sure what to choose? Let Spinner decide for you!",
                      style: TextStyle(
                        fontSize: 18,
                        color:  CupertinoColors.systemGrey4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  const SizedBox(height: 15),
                  Text(
                    "Click the wheel to start!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: CupertinoColors.systemGrey4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "This app helps you make quick decisions by randomly selecting from your provided options. Whether it’s picking a meal, choosing a movie, or making any random decision, Spinner has got you covered!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CupertinoColors.systemGrey3 ,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),
        ),
       Positioned(
          top: 20, 
          right: 20, 
          child: GestureDetector(
            onTap: () => _showInfoDialog(context),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8), 
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.info_circle_fill,
                color:  Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
void _showInfoDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoPopupSurface(
        child: Container(
          height: 450,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text("Meet the Team", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildMemberTile("Beyonce Ama", "images/1.jpg", "Lead Developer"),
                      _buildMemberTile("Jolas Arpon", "images/2.jpg", "Developer"),
                      _buildMemberTile("Monica Carreon", "images/3.jpg", "Developer"),
                      _buildMemberTile("Romel Gamboa", "images/4.jpg", "Developer"),
                      _buildMemberTile("Kayle Cedric Larin", "images/5.jpg", "Developer"),
                      _buildMemberTile("Rachelle Anne Macalino", "images/6.jpg", "Developer"),
                    ],
                  ),
                ),
              ),
              CupertinoButton(
                child: const Text("Close", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMemberTile(String name, String imagePath, String role) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.indigo.shade200,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              Text(role, style: const TextStyle(fontSize: 14, color: CupertinoColors.systemGrey)),
            ],
          ),
        ],
      ),
    );
  }
  }
