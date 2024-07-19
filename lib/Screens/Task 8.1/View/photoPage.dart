
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/photoProviderr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade500,
        centerTitle: true,
        scrolledUnderElevation: 0.1,
        title: const Text(
          'Json Data Parsing',
          style: TextStyle(
            letterSpacing: 0.3,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: homeProvider.jsonDataList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                homeProvider.jsonDataList[index].url,
              ),
            ),
            title: Text(
              homeProvider.jsonDataList[index].title,
            ),
            subtitle: Text(homeProvider.jsonDataList[index].id.toString()),
          ),
        ),
      ),
    );
  }
}
