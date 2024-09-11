import 'package:employee_management/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/18771.jpg"),
            const SizedBox(height: 20,),
          const  Text("Team Track",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 24),),
            const SizedBox(height: 2,),
           const Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("Revolutionizes employee management with real-time tracking and seamless communication. Boost productivity and streamline operations with an intuitive, all-in-one solution.",
              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w300,fontSize: 13)
              ),
            ),
              const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(15)),
                child:  const Center(
                  child:  Text("Get Started",
                   style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.w600,fontSize: 16)
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}