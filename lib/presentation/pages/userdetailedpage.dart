import 'package:employee_management/models/userdatamodel.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  final UserModel user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  backgroundImage: NetworkImage(user.avatar),
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
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
            Text(
              user.name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[700],
              ),
            ),
            const SizedBox(height: 16),
            _buildDetailRow('Email:', user.emailId, Icons.mail),
            _buildDetailRow('Mobile:', user.mobile, Icons.phone),
            _buildDetailRow('Country:', user.country, Icons.location_pin),
            _buildDetailRow('State:', user.state, Icons.location_city),
            _buildDetailRow(
                'District:', user.district, Icons.location_searching_sharp),
          ],
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
          const SizedBox(width: 10),
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
