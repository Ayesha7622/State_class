import 'package:flutter/material.dart';

class StateClass extends StatefulWidget {
  StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
// consts--- constant------> no change
  int result = 0;
  int add = 0;
  int sub = 0;
  double mod = 0;
  int multi = 0;
  double div = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 231, 246),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 45, 74),
          title: Text(
            'State Class',
            style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 252, 250, 250)),
          ),
        ),
        body: Column(
          // print("result=$result")
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Results of Arithmetic Operators=',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.mail)),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                int n1 = 50;
                int n2 = 6;
                add = n1 + n2;
                setState(() {});
                print('Add=$add');
              },
              child: Icon(Icons.add),
            ),
            Text(
              "Addition=$add",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              onPressed: () {
                int a = 10;
                int b = 87;
                sub = a - b;
                setState(() {});
                print('Subtraction=$sub');
              },
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              backgroundColor: Colors.purple,
            ),
            Text(
              'Substarction=$sub',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              onPressed: () {
                double n = 56;
                double m = 21;
                mod = n % m;
                setState(() {});
                print('Modulas$mod');
              },
              child: Icon(
                Icons.percent,
                color: Colors.white,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            Text(
              'Modulas=$mod',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              onPressed: () {
                int y = 63;
                int z = 29;
                multi = y * z;
                setState(() {});
                print('Product=$multi');
              },
              child: Text(
                '*',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 6, 57, 78),
            ),
            Text(
              'Product=$multi',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              onPressed: () {
                double y = 63;
                double z = 29;
                div = y / z;
                setState(() {});
                print('Division=$div');
              },
              child: Text(
                '/',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(255, 47, 84, 4),
            ),
            Text(
              'Division=$div',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ));
  }
}
