import 'package:flutter/material.dart';

// create a variable that stores the converted currency value
// create a function that multiplies the value given by the textifield with 81
//stores the value in the variable that we created
// display the variable
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print('rebuilt');
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 132, 189, 218),
        title: const Text('Currency Converter'),
        actions: const [
          Icon(Icons.currency_exchange_sharp),
          Icon(Icons.currency_rupee_rounded),
        ],
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 15, 15, 15),
        // elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // int->string ,integervalue.tostring()
            // string->int ,int.parse(strinvalue)
            Text(
             'INR ${result.toString()}',
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  // backgroundColor:Colors.yellow,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            // padding------->it contains only one widget
            // container----->it includes so many widgets
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                  hintText: 'pls enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            // button
            // raised button
            // appears like a text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                  // debug,release,profile
                  // if (kDebugMode) {
                  //   print('button clicked');
                  // }
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text)*81);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 206, 218, 105),
                  foregroundColor: const Color.fromARGB(255, 32, 32, 32),
                  minimumSize: const Size(double.infinity,
                      50), //  we use fixedsize around only content width fixedSize: ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















