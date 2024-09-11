import 'package:employee_management/presentation/pages/userlistview.dart';
import 'package:employee_management/presentation/widgets/notification.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          "TeamTrack",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        iconTheme: const IconThemeData(
          color:
              Color.fromARGB(255, 255, 255, 255), // Set your desired color here
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 40, // Set the size of the drawer icon here
            color: Colors.white, // Set the color of the drawer icon here
          ),
          onPressed: () {
           
          },
        ),
        actions:  [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotificationPage()));
            },

            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                
                Icons.notification_add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Image.asset(
                    "assets/images/21207.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserListScreen()));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text("Employee Details",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Track and Manage Your Staff",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 2,
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: Text(
                  "Revolutionizes employee management with real-time tracking and seamless communication. Boost productivity and streamline operations with an intuitive, all-in-one solution.",
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w400,
                      fontSize: 13)),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "# 1 Employee Management System",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              height: 380,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Image.asset(
                        "assets/images/21207.jpg",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("SALES",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                        "Track your sales team, get automated DSR and convert visits into leads & followup with CRM integration",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w300,
                            fontSize: 13)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 380,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Image.asset(
                        "assets/images/delivery.jpg",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Delivery",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                        "GPS tagged location & customer's signature to ensures correct & on-time delivery. Get instant alerts if someone deviating from path..",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w300,
                            fontSize: 13)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 380,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Image.asset(
                        "assets/images/5643476.jpg",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("SERVICE",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                        "Create service schedules for your engineers and get real-time updates on the tasks completed. Order parts or close cases.",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w300,
                            fontSize: 13)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
