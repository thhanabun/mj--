import 'package:flutter/material.dart';
import 'package:meowjotplusplus/datamodel/list.dart';
import 'package:meowjotplusplus/screen/Userprofile.dart';
import 'package:meowjotplusplus/screen/addForm.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: accountdata.length,
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: accountdata[index].type.color,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [       
                    Text(
                      accountdata[index].type.title,
                      style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${accountdata[index].amount}",
                      style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    )
                  ],
                )
              );
            }
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             const SizedBox(
              height: 100,
              width: 100,
              child: IconButton(
                icon:  Icon(Icons.home,size: 40,color: Colors.black,),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: IconButton(
                icon: const Icon(Icons.add,size: 40,color: Colors.black,),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (cxt)=>const Addform())
                  );
                },
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
    );
  }
}