import 'package:flutter/material.dart';
import 'package:quiz2/presentation/pages/inputs_page.dart';

class ResultePage extends StatefulWidget {
  final Map data;
  const ResultePage({
    super.key,
    required this.data,
  });

  @override
  State<ResultePage> createState() => _ResultePageState();
}

class _ResultePageState extends State<ResultePage> {
  @override
  late double bmi;
  void initState() {
    double heightMeter = widget.data["Height"] / 100;
    double p2heightMeter = heightMeter * heightMeter;
    bmi = widget.data["Wedight"] / p2heightMeter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 30, 54),
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 0, 30, 54),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Expanded(
                  child: Container(
                    width: 330,
                    height: 500,
                    color: Color.fromARGB(255, 0, 66, 121),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Hala(bmi: bmi),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${bmi.toStringAsFixed(1)}",
                          style: TextStyle(color: Colors.white, fontSize: 48),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Normal BMI range:",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "18.5-25kg/m2",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        nse7a(bmi: bmi)
                        ,SizedBox(
                          height: 71,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Save Result",
                              style: TextStyle(color: Colors.black),
                            )),
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InpotsPage())),
                            child: Text(
                              "RE-Calculate",
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}

class nse7a extends StatelessWidget {
  const nse7a({super.key, required this.bmi});
  final num bmi;

  @override
  Widget build(BuildContext context) {
    String fact, nseha;
    if (bmi < 18.5) {
      fact = "You have a lower than normal body Weight";
      nseha = "Try to eat more";
    } else if (bmi >= 18.5 && bmi <= 25) {
      fact = "You have a normal body Weight";
      nseha = "Good job!";
    } else {
      fact = "You have a higher than normal body Weight";
      nseha = "btal akl b2a";
    }
    ;
    return Column(
      children: [
        Text(fact, style: TextStyle(color: Colors.white, fontSize: 16)),
        Text(nseha, style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}

class Hala extends StatelessWidget {
  const Hala({super.key, required this.bmi});
  final num bmi;

  @override
  Widget build(BuildContext context) {
    String hala;
    Color c;
    if (bmi < 18.5) {
      hala = "Underweight";
      c = Colors.orange;
    } else if (bmi >= 18.5 && bmi <= 25) {
      hala = "Normal";
      c = Colors.green;
    } else {
      hala = "Overweight";
      c = Colors.orange;
    }
    ;
    return Text(
      hala,
      style: TextStyle(color: c, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
