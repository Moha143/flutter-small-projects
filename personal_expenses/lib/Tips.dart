// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TipsCalculator extends StatefulWidget {
  const TipsCalculator({Key? key}) : super(key: key);

  @override
  _TipsCalculatorState createState() => _TipsCalculatorState();
}

class _TipsCalculatorState extends State<TipsCalculator> {
  int _tipPercentage = 0; // for tip as percentage
  int _personCounter = 1; // people who are going to split the tip
  double _billAmount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          padding: EdgeInsets.all(12),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Per Person',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  ),
                  Text(
                    "\$ ${calculatetotalPerPeson(_billAmount, _tipPercentage, _personCounter)}",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ],
              ),
            ),
            // Main Container
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.purple.shade500, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Amount',
                      hintText: 'Enter bill Amounts',
                    ),
                    onChanged: (value) {
                      setState(() {
                        try {
                          _billAmount = double.parse(value);
                        } catch (exception) {
                          _billAmount = 0.0;
                        }
                      });
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "split",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (_personCounter > 1) {
                                    _personCounter--;
                                  } else {
                                    //
                                  }
                                });
                              },
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade50,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.purple.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12, right: 1),
                              child: Text(
                                "$_personCounter",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.purple.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _personCounter++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(12),
                                height: 40.0,
                                width: 40.0,
                                //padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade50,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.purple.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                  // Tip row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Tip"),
                      ),
                      Text(
                        "\$ ${calculateTotalTip(_billAmount, _tipPercentage, _personCounter)}",
                        style: TextStyle(
                            color: Colors.purple.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "$_tipPercentage%",
                        style: TextStyle(
                            color: Colors.purple.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                          min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: Colors.blue,
                          inactiveColor: Colors.purple,
                          value: _tipPercentage.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              _tipPercentage = newValue.round();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  calculatetotalPerPeson(double billAmount, int tippercentage, int splitBy) {
    var totalPerPerson =
        (calculateTotalTip(billAmount, tippercentage, splitBy) + billAmount) /
            splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, int tippercentage, int splitBy) {
    double totalTip = 0.0;
    if (billAmount < 0 || billAmount.toString().isEmpty || billAmount == null) {
      //
    } else {
      totalTip = (billAmount * tippercentage) / 100;
    }
    return totalTip;
  }
}
