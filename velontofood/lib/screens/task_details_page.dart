import 'package:flutter/material.dart';
import 'package:velontofood/utils/app_color.dart';

class TaskInfoPage extends StatefulWidget {
  const TaskInfoPage({Key? key}) : super(key: key);
  static String id = 'TaskDetails';

  @override
  State<TaskInfoPage> createState() => _TaskInfoPageState();
}

class _TaskInfoPageState extends State<TaskInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task #00349",
            style: TextStyle(color: AppColors.primaryColor)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ItemInfo(title: "Preparing time", details: "00h : 25m : 30s"),
                ItemInfo(title: "Address", details: "Gaza, Al Remal Building"),
                ItemInfo(title: "Austin Paul", details: "+00970 593529643"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.title, required this.details})
      : super(key: key);
  final title;

  final details;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title),
            Text(details),
          ],
        ),
      ),
    );
  }
}
