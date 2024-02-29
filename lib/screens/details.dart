import 'package:flutter/material.dart';

import 'datapage.dart';

void main(List<String> args) {
  runApp(DetailsPage());
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

enum ProductSelectionEnum { male, female }

class _DetailsPageState extends State<DetailsPage> {
  var _productname;
  bool? checkedbox;
  bool? oncheckedboxdata;
  final _usernamecontroller = TextEditingController();
  ProductSelectionEnum? productSelectionEnumValue;

  @override
  void initState() {
    super.initState();
    _usernamecontroller.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _productname = _usernamecontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details Page',
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            TextFormField(
              controller: _usernamecontroller,
              decoration: const InputDecoration(
                labelText: 'Fill in your name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.verified_user_outlined),
              ),
              // onChanged: (data) {
              //   _updateText(data);
              // },
            ),
            // Text("This is  the $_productname"),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Datapage(productname: _usernamecontroller.text);
                  }),
                );
              },
              child: const Text(
                'SUBMIT FORM',
              ),
            ),

            Container(
              color: Color.fromARGB(255, 214, 214, 214),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  Checkbox(
                    tristate: true,
                    value: checkedbox,
                    onChanged: (text) {
                      // StateSetter((){})
                      setState(() {
                        checkedbox = text;
                      });
                    },
                  ),
                  const Text('Are You Normal?'),
                ],
              ),
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.only(left: 0.0),
              tristate: true,
              title: const Text('Sure You are Normal?'),
              controlAffinity: ListTileControlAffinity.leading,
              value: oncheckedboxdata,
              onChanged: (val) {
                setState(() {
                  oncheckedboxdata = val;
                });
              },
            ),
            RadioListTile<ProductSelectionEnum>(
                value: ProductSelectionEnum.male,
                groupValue: productSelectionEnumValue,
                // title: Text(ProductSelectionEnum.male),
                onChanged: (val) {
                  setState(() {
                    productSelectionEnumValue = val;
                  });
                }),
            const RadioListTile(
              value: ProductSelectionEnum.female,
              groupValue: 1,
              onChanged: null,
            )
          ],
        ),
      ),
    );
  }
}
