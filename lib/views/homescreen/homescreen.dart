import 'package:flutter/material.dart';

import 'package:quiz_main_app/DummyDb.dart';
import 'package:quiz_main_app/views/homescreen/widget/Containerwidget.dart';

import 'package:quiz_main_app/views/QuestionScreen/questionScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: profile(),
        backgroundColor: Colors.black.withOpacity(0.8),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              rankingsection(),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lets play,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: DummyDb.categoryList.length,
                    itemBuilder: (context, index) => QuestionContainerwidget(
                          questionimage: DummyDb.categoryList[index]
                              ["questionimage"],
                          questionname: DummyDb.categoryList[index]
                              ["questionname"],
                          oncategorytap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuestionScreen(
                                      category: DummyDb.categoryList[index]
                                          ["questionname"]),
                                ));
                          },
                        )),
              )
            ],
          ),
        ));
  }

  Container rankingsection() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("Ranking",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("350",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Divider(color: Colors.black),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("Points",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("1200",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar profile() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Weeknd",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("Assets/images/profileimg.png"),
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
      toolbarHeight: 80,
    );
  }
}
