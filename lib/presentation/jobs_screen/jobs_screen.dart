import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/const.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leadingWidth: 20,
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 0),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                suffixIcon: Icon(Icons.close)),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TabBar(
                labelColor: black,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 4,
                indicatorColor: primaryColor,
                tabs: [
                  Tab(
                    icon: Text(
                      'Active',
                      style: TextStyle(color: black, fontSize: 20),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      'Inactive',
                      style: TextStyle(color: black, fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
