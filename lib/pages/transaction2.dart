import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';




class Transaction2 extends StatefulWidget {
  const Transaction2({super.key, Key});

  @override
  TransactionState createState() => TransactionState();
}

class TransactionState extends State<Transaction2> {
  //TextEditingController _dateEditingController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime.now(),
      onConfirm: (date) {
        setState(() {
          _selectedDate = date;
        });
      },
      currentTime: _selectedDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('Transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF2F1256),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 1.0,
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _showDateTimePicker,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2F1256),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Start Date'),
                            const SizedBox(width: 2),
                            Text(
                              // ignore: unnecessary_null_comparison
                              _selectedDate != null
                                  ? DateFormat('dd/MM/yy').format(_selectedDate)
                                  : 'DD/MM/YY',
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2F1256),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Start Date',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 2),
                              // const SizedBox(width: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: const InputDecoration(
                                      hintText: 'DD/MM/YY',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Hello World2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Hello World2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Hello World2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Hello World2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Hello World3',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
