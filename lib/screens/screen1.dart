import 'package:bmi_calc/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/components/reusableCard.dart';
import 'package:bmi_calc/components/components.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double foot = kheight / 30.48;
    double inches = foot * 12;
    int roundedfig = inches.truncate();
    double newResult = inches - roundedfig.toDouble();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: ReusableCard(
                      onPress: () {
                        setState(() {
                          changeGEnderColor(Gender.male);
                        });
                      },
                      gender: Gender.male,
                      colour: maleColor,
                      cardChild: Icon(
                        Icons.male,
                        size: ksize,
                      ),
                    )),
                    Expanded(
                        child: ReusableCard(
                      onPress: () {
                        setState(() {
                          changeGEnderColor(Gender.female);
                        });
                      },
                      gender: Gender.female,
                      colour: femaleColor,
                      cardChild: Icon(
                        Icons.female,
                        size: ksize,
                      ),
                    )),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    kheight.toStringAsFixed(2),
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Text(
                                    'cm',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Foot',
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    '${(kheight / 30.48).toStringAsFixed(0)}\'\'',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  Text(
                                    '\t${newResult.toStringAsFixed(2)} inch',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: kBottomContainerColour,
                        value: kheight,
                        min: 0,
                        max: 500,
                        label: kheight.toString(),
                        onChanged: (newheight) {
                          setState(() {
                            kheight = newheight;
                            print('$kheight');
                            print(inches);
                            print(roundedfig);
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kInactiveCardColour,
                  ),
                )),
            Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 3,
                        child: ReusableCard(
                            gender: Gender.none,
                            onPress: () {},
                            colour: kInactiveCardColour,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Weight',
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  '$kweight',
                                  style: kTitleTextStyle,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: CircleAvatar(
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              kweight++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 40,
                                          ),
                                        ),
                                        backgroundColor: kActiveCardColour,
                                        radius: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 03,
                                    ),
                                    Expanded(
                                      child: CircleAvatar(
                                        child: TextButton(
                                          onLongPress: () {
                                            setState(() {
                                              kweight;
                                            });
                                          },
                                          onPressed: () {
                                            setState(() {
                                              kweight--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: 40,
                                          ),
                                        ),
                                        backgroundColor: kActiveCardColour,
                                        radius: 40,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))),
                    Expanded(
                        flex: 3,
                        child: ReusableCard(
                            gender: Gender.none,
                            colour: kInactiveCardColour,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Age',
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  '$kage',
                                  style: kTitleTextStyle,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: CircleAvatar(
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              kage++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 40,
                                          ),
                                        ),
                                        backgroundColor: kActiveCardColour,
                                        radius: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 03,
                                    ),
                                    Expanded(
                                      child: CircleAvatar(
                                        child: TextButton(
                                          onLongPress: () {
                                            setState(() {
                                              kage--;
                                            });
                                          },
                                          onPressed: () {
                                            setState(() {
                                              kage--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            size: 40,
                                          ),
                                        ),
                                        backgroundColor: kActiveCardColour,
                                        radius: 40,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))),
                  ],
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(250),
                          bottomRight: Radius.circular(200)),
                      color: kBottomContainerColour),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        elevation: 78.0,
                        backgroundColor: kBottomContainerColour),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Screen2()));
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                          fontSize: ktextsize, color: kActiveCardColour),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
