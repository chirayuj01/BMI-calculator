import 'package:classico/ResultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculator extends StatefulWidget {
  final String nameOfPerson;

  Calculator(this.nameOfPerson);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var malebgcolor = Colors.white60;
  var femalebgcolor = Colors.white60;
  var gender;
  int? height = 0;

  void updateHeight(double value) {
    setState(() {
      height = int.parse((value.round()).toString());
    });
  }

  var weightController = TextEditingController(text: '0');
  var ageController = TextEditingController(text: '0');
  int? weight;
  int? age;

  @override
  void initState() {
    super.initState();
    weightController.addListener(() {
      setState(() {
        weight = int.tryParse(weightController.text) ?? 0;
      });
    });

    ageController.addListener(() {
      setState(() {
        age = int.tryParse(ageController.text) ?? 0;
      });
    });
  }

  @override
  void dispose() {
    weightController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Welcome, ${widget.nameOfPerson}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 13,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                malebgcolor = Colors.white;

                                femalebgcolor = Colors.white60;
                                gender = 'Male';
                              });
                            },
                            child: FaIcon(FontAwesomeIcons.male, size: 80, color: malebgcolor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: malebgcolor,
                              fontSize: 30,
                              fontFamily: 'PostSen',
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                femalebgcolor = Colors.white;
                                malebgcolor = Colors.white60;
                                gender = 'Female';
                              });
                            },
                            child: FaIcon(FontAwesomeIcons.female, size: 80, color: femalebgcolor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: femalebgcolor,
                              fontSize: 30,
                              fontFamily: 'PostSen',
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 180,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 13,
                      ),
                    ],
                  ),
                  child: Center(
                    child: SingleValueSlider(
                      onHeightChanged: updateHeight,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 13,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'WEIGHT (in Kg)',
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          Container(
                            height: 80,
                            width: 110,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 55),
                              controller: weightController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 22),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(3000),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      int currentWeight = int.parse(weightController.text);
                                      if (currentWeight > 0) {
                                        currentWeight--;
                                      }
                                      weight = currentWeight;
                                      weightController.text = currentWeight.toString();
                                    });
                                  },
                                  child: FaIcon(FontAwesomeIcons.minus, size: 35, color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(3000),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      int currentWeight = int.parse(weightController.text);
                                      currentWeight++;
                                      weight = currentWeight;
                                      weightController.text = currentWeight.toString();
                                    });
                                  },
                                  child: Icon(Icons.add, size: 40, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 13,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'AGE',
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 55),
                                controller: ageController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 22),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(3000),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      int currentAge = int.parse(ageController.text);
                                      if (currentAge > 0) {
                                        currentAge--;
                                      }
                                      age = currentAge;
                                      ageController.text = currentAge.toString();
                                    });
                                  },
                                  child: FaIcon(FontAwesomeIcons.minus, size: 35, color: Colors.black),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(3000),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      int currentAge = int.parse(ageController.text);
                                      currentAge++;
                                      age = currentAge;
                                      ageController.text = currentAge.toString();
                                    });
                                  },
                                  child: Icon(Icons.add, size: 40, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {
                        var username=widget.nameOfPerson;
                        var Status;
                        var StatusColor;
                        var BMIindex;
                        var BMIRange;

                        setState(() {
                          if (height != null && weight != null) {
                            double currheight = (height!) / 100;
                            double finalheight = currheight * currheight;

                            BMIindex = weight! / finalheight;
                            if (BMIindex < 18.5) {
                              Status = 'Underweight';
                              StatusColor = Colors.lightGreen.shade400;
                              BMIRange = '0-18.4';
                            } else if (BMIindex <= 24.9) {
                              Status = 'Normal';
                              StatusColor = Colors.green.shade700;
                              BMIRange = '18.5-24.9';
                            } else if (BMIindex <= 29.9) {
                              Status = 'Overweight';
                              StatusColor = Colors.orange;
                              BMIRange = '25-29.9';
                            } else {
                              Status = 'Obesity';
                              StatusColor = Colors.red.shade800;
                              BMIRange = '30 and above';
                            }
                          }
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (Context) => Resultpage(

                              Status,
                              StatusColor,
                              BMIindex,
                              BMIRange,
                              age,
                              gender,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingleValueSlider extends StatefulWidget {
  @override
  _SingleValueSliderState createState() => _SingleValueSliderState();

  final void Function(double) onHeightChanged;

  SingleValueSlider({required this.onHeightChanged});
}

class _SingleValueSliderState extends State<SingleValueSlider> {
  double _currentSliderValue = 500;

  void updateHeight(double value) {
    setState(() {
      _currentSliderValue = value;
    });
    // Pass the value to the parent widget (Calculator)
    widget.onHeightChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT (in cm)',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '${_currentSliderValue.round()}',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 8.0,
            inactiveTrackColor: Colors.indigo.shade100,
            activeTrackColor: Colors.deepPurpleAccent,
            thumbColor: Colors.red,
            overlayColor: Colors.indigo.withAlpha(32),
            valueIndicatorColor: Colors.indigo,
            valueIndicatorTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          child: Slider(
            value: _currentSliderValue,
            min: 0,
            max: 500,
            divisions: 500,
            onChanged: updateHeight,
          ),
        ),
        Text(
          '(1 feet = 12 inches, 1 inch = 2.54 cm)',
          style: TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}
