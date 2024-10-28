import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_main_app/DummyDb.dart';

import 'package:quiz_main_app/views/ResultScreen/resultscreen.dart';

class QuestionScreen extends StatefulWidget {
  final String category;
  const QuestionScreen({super.key, required this.category});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int count = 0;
  int? selectedAnswerIndex;
  int rightAnswerCount = 0;
  double progress = 0.0;
  List questionList = [];
  Timer? timer;
  int timeLeft = 10;

  @override
  void initState() {
    super.initState();
    Category(); //  questions
    startTimer(); // Start timer
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void Category() {
    switch (widget.category) {
      case "Sports":
        questionList = DummyDb.SportList;
        break;
      case "Chemistry":
        questionList = DummyDb.chemistryList;
        break;
      case "Mathematics":
        questionList = DummyDb.mathematicsList;
        break;
      case "History":
        questionList = DummyDb.historyList;
        break;
      case "Biology":
        questionList = DummyDb.biologyList;
        break;
      case "Geography":
        questionList = DummyDb.geographyList;
        break;
    }
  }

  void startTimer() {
    timer?.cancel();
    timeLeft = 10;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
          goToNextQuestion(); // Move to next question
        }
      });
    });
  }

  void goToNextQuestion() {
    if (count < questionList.length - 1) {
      setState(() {
        count++;
        selectedAnswerIndex = null;
        startTimer(); // Restart timer
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            RightansCount: rightAnswerCount,
          ),
        ),
      );
    }
  }

  void updateProgress() {
    setState(() {
      progress = rightAnswerCount / questionList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "${count + 1} / ${questionList.length}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            _timer(),

            SizedBox(height: 10),

            _progressindicator(),

            SizedBox(height: 20),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 3.0,
                        )),
                    child: Center(
                      child: Text(
                        questionList[count]["question"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: List.generate(
                questionList[count]["options"].length,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      if (selectedAnswerIndex == null) {
                        setState(() {
                          selectedAnswerIndex = index;

                          if (index == questionList[count]["answer index"]) {
                            rightAnswerCount++;
                            updateProgress(); // Update progress if correct
                          }
                        });
                        timer?.cancel(); // Cancel the timer on answer selection
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: getColor(index),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            questionList[count]["options"][index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const Icon(
                            Icons.circle_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Next Button
            if (selectedAnswerIndex != null)
              InkWell(
                onTap: goToNextQuestion,
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade50,
                  ),
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Container _progressindicator() {
    return Container(
      height: 10,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: LinearProgressIndicator(
          value: progress,
          color: Colors.green,
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }

  Stack _timer() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 255, 67, 54),
          radius: 30,
          child: CircularProgressIndicator(
            value: timeLeft / 10,
            backgroundColor: Colors.white,
            color: Colors.grey,
            strokeWidth: 4,
          ),
        ),
        Text(
          "$timeLeft",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Color getColor(int optionIndex) {
    if (selectedAnswerIndex != null &&
        optionIndex == questionList[count]["answer index"]) {
      return Colors.green;
    }
    if (selectedAnswerIndex == optionIndex) {
      return Colors.red;
    }
    return Colors.grey;
  }
}
