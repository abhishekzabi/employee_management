import 'package:employee_management/controller/userdatacontroller.dart';
import 'package:employee_management/models/userdatamodel.dart';
import 'package:employee_management/presentation/pages/userdetailedpage.dart';
import 'package:employee_management/presentation/widgets/notification.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late Future<List<UserModel>> futureUsers;
  List<UserModel> allUsers = [];
  List<UserModel> filteredUsers = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    futureUsers = ApiService().fetchUsers();
    futureUsers.then((users) {
      setState(() {
        allUsers = users;
        filteredUsers = users;
      });
    });
  }

  void _filterUsers(String text) {
    setState(() {
      searchText = text.toLowerCase();
      filteredUsers = allUsers
          .where((user) => user.name.toLowerCase().contains(searchText))
          .toList();
    });
  }

  void _navigateToDetail(UserModel user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailScreen(user: user),
      ),
    );
  }

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
          icon: const Icon(
            Icons.menu,
            size: 40, // Set the size of the drawer icon here
            color: Colors.white, // Set the color of the drawer icon here
          ),
          onPressed: () {},
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationPage()));
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // Search bar
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search by Employee Name',
                  labelStyle: const TextStyle(
                    color: Colors.white, // Change label text color to white
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 255, 255,
                        255), // Change the color of the search icon
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white, // Border color when not focused
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white, // Border color when focused
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: _filterUsers, // Call the filter function when typing
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: FutureBuilder<List<UserModel>>(
              future: futureUsers,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No Users Found'));
                } else {
                  return ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {
                      UserModel user = filteredUsers[index];
                      return Card(
                        color: const Color.fromARGB(255, 236, 255, 253),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.avatar),
                          ),
                          title: Text(
                            user.name,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            user.emailId,
                            style: const TextStyle(
                                color: Colors.teal, fontSize: 12),
                          ),
                          trailing: Text(user.mobile),
                          onTap: () => _navigateToDetail(
                              user), // Navigate to detail page
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
