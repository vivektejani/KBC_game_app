
import 'package:flutter/material.dart';
import 'package:untitled1/Question_bank.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var  MyStyle = ElevatedButton.styleFrom(
    primary: const Color(0xff1e1f23),
    onPrimary: const Color(0xffa8a8a9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: const TextStyle(fontSize: 22),
  );
  int index = 0;
  int amt = 500;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: questions[index]["color"],
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "${index + 1}. ${questions[index]["question"]}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[index]["op1"] ==
                                    questions[index]["ans"]) {
                                  (index == 2)
                                      ? amt = amt + 1000
                                      : (index == 3)
                                          ? amt = amt + 2000
                                          : amt = amt * 2;
                                  index++;
                                  Navigator.of(context)
                                      .pushNamed("win_page", arguments: amt);
                                } else {
                                  Navigator.of(context).pushNamed("lose_page");
                                  index = 0;
                                  amt = 500;
                                }
                              });
                            },
                            child: Text("A. ${questions[index]["op1"]}"),
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[index]["op2"] ==
                                    questions[index]["ans"]) {
                                  (index == 2)
                                      ? amt = amt + 1000
                                      : (index == 3)
                                          ? amt = amt + 2000
                                          : amt = amt * 2;
                                  index++;
                                  Navigator.of(context)
                                      .pushNamed("win_page", arguments: amt);
                                } else {
                                  Navigator.of(context).pushNamed("lose_page");
                                  index = 0;
                                  amt = 500;
                                }
                              });
                            },
                            child: Text("B.${questions[index]["op2"]}"),
                            style: MyStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[index]["op3"] ==
                                    questions[index]["ans"]) {
                                  (index == 2)
                                      ? amt = amt + 1000
                                      : (index == 3)
                                          ? amt = amt + 2000
                                          : amt = amt * 2;
                                  index++;
                                  Navigator.of(context)
                                      .pushNamed("win_page", arguments: amt);
                                } else {
                                  Navigator.of(context).pushNamed("lose_page");
                                  index = 0;
                                  amt = 500;
                                }
                              });
                            },
                            child: Text("C. ${questions[index]["op3"]}"),
                            style: MyStyle,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.0745,
                          width: _width * 0.47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (questions[index]["op4"] ==
                                    questions[index]["ans"]) {
                                  (index == 2)
                                      ? amt = amt + 1000
                                      : (index == 3)
                                          ? amt = amt + 2000
                                          : amt = amt * 2;
                                  index++;
                                  Navigator.of(context)
                                      .pushNamed("win_page", arguments: amt);
                                } else {
                                  Navigator.of(context).pushNamed("lose_page");
                                  index = 0;
                                  amt = 500;
                                }
                              });
                            },
                            child: Text("D. ${questions[index]["op4"]}"),
                            style: MyStyle,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
