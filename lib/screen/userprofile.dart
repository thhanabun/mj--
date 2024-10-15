import 'package:flutter/material.dart';
import 'package:meowjotplusplus/datamodel/userdata.dart';
import 'package:meowjotplusplus/main.dart';
import 'package:meowjotplusplus/screen/addForm.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  final _formKey = GlobalKey<FormState>();
  final String _customerid = "0";
  String _username = "";
  int _income = 0;
  int _expense = 0;
  int _professionsalary = 0;
  Risktolerance _risktolerance = Risktolerance.select;
  int _age = 0;
  int _retirementage = 60;
  int _saving = 0;
  int _financialgoals = 0;
  String _interests = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Account Input Form",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Account Input Form"),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Username",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter username";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value.toString();
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Income",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your income";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _income = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Expense",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your expense";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _expense = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Profession Salary",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your profession salary";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _professionsalary = int.parse(value.toString());
                        },
                      ),
                      DropdownButtonFormField(
                        value: _risktolerance,
                        items: Risktolerance.values.map((Risktolerance type) {
                          return DropdownMenuItem<Risktolerance>(
                            value: type,
                            child: Text(
                              type.title.toString().split('.').last,
                              style: const TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value == Risktolerance.select ) {
                            return "Please enter select your Risk tolorance";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            _risktolerance = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Age",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your age";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _age = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Retirement Age",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your retirement age";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _retirementage = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Saving",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your saving";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _saving = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Financial goal",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your financial goal";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _financialgoals = int.parse(value.toString());
                        },
                      ),
                      TextFormField(
                        maxLength: 20,
                        decoration: const InputDecoration(
                            label: Text(
                          "Interest",
                          style: TextStyle(fontSize: 20),
                        )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your interests";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _interests = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FilledButton(
                          onPressed: () {
                            _formKey.currentState!.validate();
                            _formKey.currentState!.save();
                            customerprofile.clear();
                            customerprofile.add(Profile(
                                customerid: _customerid,
                                username: _username,
                                income: _income,
                                expense: _expense,
                                professionsalary: _professionsalary,
                                risktolerance: _risktolerance,
                                age: _age,
                                retirementage: _retirementage,
                                saving: _saving,
                                financialgoals: _financialgoals,
                                interests: _interests));
                            _formKey.currentState!.reset();
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (cxt) => const MyApp()));
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.yellow,
                          ),
                          child: const Text(
                            "Save",
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: IconButton(
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (cxt) => const MyApp()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (cxt) => const Addform()));
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                      width: 100,
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          size: 40,
                          color: Colors.black,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
