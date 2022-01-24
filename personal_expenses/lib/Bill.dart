// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  _BillingState createState() => _BillingState();
}

class _BillingState extends State<Billing> {
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
              // padding: EdgeInsets.all(15),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Total Per Person",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "\$ ${calculatetotalPerPeson(_billAmount, _tipPercentage, _personCounter)}",
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 34),
                    ),
                  )
                ],
              ),
            ),
            // the second container fo calculation
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.grey.shade700, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                        color: Colors.purple.shade700,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        prefixText: 'Bill Amount',
                        prefixIcon: Icon(Icons.attach_money)),
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
                  // split row
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
                                  borderRadius: BorderRadius.circular(7)),
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
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.purple.shade700,
                                fontWeight: FontWeight.bold),
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
                    ],
                  ),
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
                          activeColor: Colors.purple,
                          inactiveColor: Colors.grey,
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
