import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';




class Transaction extends StatefulWidget {
  const Transaction({super.key, Key});

  @override
  TransactionState createState() => TransactionState();
}

class TransactionState extends State<Transaction> {
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1.0,
            // height: MediaQuery.of(context).size.height * 0.2,
            ////////////////////////PART ONE STARTS///////////////////////////////////////////////////////
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 200,
                    height: 50,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 14),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.05,
                          child: ClipRRect(
                            child: ElevatedButton(
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
                          ),
                        ),
                        const SizedBox(height: 14),
                        SizedBox(
                          // width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2F1256),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Start Date'),
                                const SizedBox(width: 2),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    decoration: const InputDecoration(
                                      hintText: 'DD/MM/YY',
                                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
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
            ////////////////////////////////////////PART ONE ENDS///////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Expanded(
              flex: 3,
              child: Container(
                width: 200,
                height: 50,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 14),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

            ],


        )


              ),

        ),
    );
  }
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// SizedBox(
//   width: MediaQuery.of(context).size.width * 0.8,
//   height: MediaQuery.of(context).size.height * 0.05,
//   child: ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       backgroundColor: const Color(0xFF2F1256),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text('Start Date'),
//         const SizedBox(width: 2),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.3,
//           height: MediaQuery.of(context).size.height * 0.05,
//           child: TextFormField(
//             keyboardType: TextInputType.datetime,
//             inputFormatters: [
//               MaskedTextInputFormatter(
//                 mask: '##/##/##',
//                 separator: '/',
//               ),
//             ],
//             maxLength: 8,
//             decoration: const InputDecoration(
//               hintText: 'DD/MM/YY',
//               hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
//////////////////////////////////////////////                  ////////////////////////////////////////////////////////////////////////////////////////////
// SizedBox(
//   width: MediaQuery.of(context).size.width * 0.8,
//   height: MediaQuery.of(context).size.height * 0.05,
//   child: ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       backgroundColor: const Color(0xFF2F1256),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text('Start Date'),
//         const SizedBox(width: 2),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.3,
//           height: MediaQuery.of(context).size.height * 0.05,
//           child: TextFormField(
//             keyboardType: TextInputType.datetime,
//             maxLength: 8,
//             controller: _dateEditingController,
//             decoration: const InputDecoration(
//               hintText: 'DD/MM/YY',
//               hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//             ),
//             onChanged: (value) {
//               String newValue = value.replaceAll("/", "");
//               if (newValue.isNotEmpty && newValue.length < 3) {
//                 newValue = "${newValue.substring(0, 2)}/${newValue.substring(2)}";
//               } else if (newValue.length > 2 && newValue.length < 5) {
//                 newValue = "${newValue.substring(0, 2)}/${newValue.substring(2, 4)}/${newValue.substring(4)}";
//               }
//               _dateEditingController.value = TextEditingValue(
//                 text: newValue,
//                 selection: TextSelection.fromPosition(
//                   TextPosition(
//                     offset: newValue.length,
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),