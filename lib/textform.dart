import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  TextForm({super.key});

  @override
  State<TextForm> createState() => _StateClassState();
}

class _StateClassState extends State<TextForm> {
// consts--- constant------> no change
  // Global Variables
  int result = 0;
  int add = 0;
  int sub = 0;
  double mod = 0;
  int multi = 0;
  double div = 0;
  //TextEditingController
  // className        object= Constructor
  // declaraion- empty--null
  // int a;// variable declaration----
  //  cin>>a
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Conroller = TextEditingController();

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
              padding: EdgeInsets.symmetric(horizontal: 98, vertical: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 16, 33, 46),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: n1Controller, //initializing value
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter 1st number',
                      hintStyle: TextStyle(color: Colors.white),
                      //prefixIcon: Icon(Icons.mail)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 98),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 28, 46),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: n2Conroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter 2nd number',
                      hintStyle: TextStyle(color: Colors.white),
                      //
                      //prefixIcon: Icon(Icons.mail)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      // int=   String-- conversion
                      int a = int.parse(n1Controller.text);
                      int b = int.parse(n2Conroller.text);
                      add = a + b;
                      setState(() {});
                      print('Add=$add');
                    },
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          int a = int.parse(n1Controller.text);
                          int b = int.parse(n2Conroller.text);
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
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
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
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
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Add=$add",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sub=$sub',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Mod=$mod',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Multi=$multi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Div=$div',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
