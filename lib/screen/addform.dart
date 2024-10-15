import 'package:flutter/material.dart';
import 'package:meowjotplusplus/datamodel/list.dart';
import 'package:meowjotplusplus/main.dart';
import 'package:meowjotplusplus/screen/Userprofile.dart';
class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formKey = GlobalKey<FormState>();
  int _amount=0 ;
  AccountType _accounttype = AccountType.outcome;

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
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          label: Text("Amount",style: TextStyle(fontSize: 20),)
                        ),
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter amount";
                          }
                          return null;
                        } ,
                        onSaved: (value) {
                          _amount = int.parse(value.toString());
                        },
                      ),
                      DropdownButtonFormField(
                        value: _accounttype,
                        items: AccountType.values.map((AccountType type){
                          return DropdownMenuItem<AccountType>(
                            value: type,
                            child: Text(type.toString().split('.').last,style: const TextStyle(fontSize: 20),),
                            );
                        }).toList(),
                         onChanged: (value){
                          setState(() {
                            _accounttype=value!;
                          });
                         },
                      ),
                      const SizedBox(height: 15,),
                      FilledButton(
                        onPressed: (){
                          _formKey.currentState!.validate();
                          _formKey.currentState!.save();
                          accountdata.add(
                            Account(type: _accounttype, amount: _amount)
                          );
                          _formKey.currentState!.reset();
                          Navigator.pushReplacement(context,MaterialPageRoute(
                          builder: (cxt)=>const MyApp())
                          );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.yellow,
                        ),
                        child: const Text("Submit",style: TextStyle(fontSize: 20),)
                      ),
                    ],
                  ),
                  ),
              ),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: IconButton(
                icon:  const Icon(Icons.home,size: 40,color: Colors.black,),
                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(
                    builder: (cxt)=>const MyApp())
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
              width: 100,
              child: IconButton(
                icon: Icon(Icons.add,size: 40,color: Colors.black,),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: IconButton(
                icon: const Icon(Icons.account_circle,size: 40,color: Colors.black,),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (cxt)=>const Userprofile())
                  );
                },
              ),
            ),
          ],
        )
            ],
          ),
          ),
      ),
    );
  }
}