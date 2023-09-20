import 'package:flutter/material.dart';
import 'package:quiz2/presentation/pages/result_page.dart';

class InpotsPage extends StatefulWidget {
  const InpotsPage({
    super.key,
  });

  @override
  State<InpotsPage> createState() => _InpotsPageState();
}

class _InpotsPageState extends State<InpotsPage> {
  Map<String, dynamic> userData = {
    "Gendar": "Male",
    "Height": 160.0,
    "Wedight": 50,
    "Age": 20
  };
  Color x = const Color.fromARGB(255, 0, 66, 121),
      y = const Color.fromARGB(255, 0, 66, 121);
  double pheight = 160;
  int pwedight = 50, age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 30, 54),
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 0, 30, 54),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        x = Colors.grey;
                        y = const Color.fromARGB(255, 0, 66, 121);
                        userData["Gendar"] = "male";
                      }),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: x,
                          child: const Column(
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 70,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        y = Colors.grey;
                        x = const Color.fromARGB(255, 0, 66, 121);
                        userData["Gendar"] = "female";
                      }),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: y,
                          child: const Column(
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 70,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Femail",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 66, 121),
                    padding: const EdgeInsets.all(8),
                    child: Column(children: [
                      const Text(
                        "Height",
                        style: TextStyle(
                            color: Color.fromARGB(255, 97, 93, 93)),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "${pheight}cm",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        min: 0,
                        max: 250,
                        value: pheight,
                        onChanged: (value) => setState(() {
                          pheight = value;
                          userData["Height"] = pheight.toInt();
                        }),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 66, 121),
                    height: 150,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Wedight",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 93, 93)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${pwedight}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    pwedight = pwedight + 1;
                                    userData["Wedight"] = pwedight;
                                  });
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.black),
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    pwedight = pwedight - 1;
                                    userData["Wedight"] = pwedight;
                                  });
                                },
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.black),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: const Color.fromARGB(255, 0, 66, 121),
                    height: 150,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Age",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 93, 93)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${age}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age = age + 1;
                                    userData["Age"] = age;
                                  });
                                },
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.black),
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    age = age - 1;
                                    userData["Age"] = age;
                                  });
                                },
                                child: const Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.black),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultePage(
                              data: userData,
                            ))),
                child: const Text(
                  "Calculate",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ))
          ],
        ));
  }
}
