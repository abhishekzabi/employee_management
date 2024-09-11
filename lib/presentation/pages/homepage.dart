import 'package:employee_management/presentation/widgets/cutombottomnav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("TeamTrack",style: TextStyle(color:Colors.white,fontSize: 18),),
         iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), // Set your desired color here
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add,color: Colors.white,),
          )
        ],
      ),
      drawer: const Drawer(),
      bottomNavigationBar: CustomBottomNavBar(),
      
      body: const Center(
        child: Text('Welcome to the Employee Management App!'),
      ),
    );
  }
}
