import 'package:flutter/material.dart';
import 'package:bmi_calc/components/components.dart';
import 'screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    BMI = kweight / (kheight * 0.01 * kheight * 0.01);
    print(BMI);
    if (BMI > 18) {
      kresultDetails = bmiResulttext[1];
      kresult = result[1];
    }
    if (BMI > 25) {
      kresultDetails = bmiResulttext[2];
      kresult = result[2];
    } else if (BMI < 18) {
      kresult = result[0];
      kresultDetails = bmiResulttext[0];
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kInactiveCardColour,
        title: Text('Bmi Calculator'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: kActiveCardColour,
        ),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-1, -0.9),
                child: Container(
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(20),
                  height: 100,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        kresult,
                        style: kBodyTextStyle.copyWith(
                            color: kBottomContainerColour),
                      ),
                      Text(
                        BMI.toStringAsFixed(2),
                        style: kBMITextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          kresultDetails,
                          style: kBodyTextStyle,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(20),
                  height: height / 1.6,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      fixedSize: Size(width, 59),
                      elevation: 78.0,
                      backgroundColor: kBottomContainerColour),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    'RE-Calculate',
                    style: TextStyle(
                        fontSize: ktextsize, color: kActiveCardColour),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
