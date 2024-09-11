import 'package:flutter/material.dart';

class YourProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Your Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.teal, width: 2)),
                    child: Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            const AssetImage("assets/images/profile.jpg"),
                        backgroundColor: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(
                thickness: 2,
                color: Colors.teal,
              ),
              const Icon(
                Icons.person,
                color: Colors.teal,
                size: 38,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Samuel John",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey[700],
                ),
              ),
              const SizedBox(height: 16),
              _buildDetailRow('Email:', "samueljohn@gmail.com", Icons.mail),
              _buildDetailRow('Mobile:', "888666543", Icons.phone),
              _buildDetailRow('Country:', "India", Icons.location_pin),
              _buildDetailRow('State:', "Maharashtra", Icons.location_city),
              _buildDetailRow(
                  'District:', "Pune", Icons.location_searching_sharp),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.teal,
            size: 28,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[600],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
