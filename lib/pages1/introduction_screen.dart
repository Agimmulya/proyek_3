import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final List<PageViewModel> pages = [
      PageViewModel(
        title: "Second page",
        body:
            "Developer Mode replaces the Windows 8.1 requirements  This includes starting an SSH service to allow deployment to this device. In order to stop this service, you need to disable Developer Mode.",
        footer: TextButton(
          onPressed: () {},
          child: Text("Lest's Go"),
        ),
        image: Container(
          // color: Colors.amber,
          height: mediaQueryHeight * 0.9,
          child: Center(
            child: Image.asset("images/1.png"),
          ),
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PageViewModel(
        title: "First page",
        body: "Description",
        footer: TextButton(
          onPressed: () {},
          child: Text("Lest's Go"),
        ),
        image: Center(
          child: Image.asset("images/2.png"),
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PageViewModel(
        title: "Third page",
        body: "Description",
        footer: TextButton(
          onPressed: () {},
          child: Text("Lest's Go"),
        ),
        image: Center(
          child: Image.asset("images/3.png"),
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("On boarding"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: DotsDecorator(
            size: Size(10, 10),
            color: Colors.blue,
            activeSize: Size.square(15),
            activeColor: Colors.teal,
          ),
          showDoneButton: true,
          done: Text(
            "Done",
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: Icon(Icons.arrow_forward, size: 25),
          onDone: () => onDone(context),
        ),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
