import 'package:flutter/material.dart';

class QuestionContainerwidget extends StatelessWidget {
  final String questionimage;
  final String questionname;
  final void Function()? oncategorytap;
  const QuestionContainerwidget({
    super.key,
    required this.questionimage,
    required this.questionname,
    required this.oncategorytap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncategorytap,
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 70,
                width: 120,
                child: Image(
                  image: AssetImage(questionimage),
                  fit: BoxFit.contain,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(questionname,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("6 Questions",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
