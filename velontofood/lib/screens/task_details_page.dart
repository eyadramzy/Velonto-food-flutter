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
            style: TextStyle(color: primaryColor)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: primaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 1,
              shadowColor: Colors.black26,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const ItemInfo(
                          title: "Preparing time", details: "00h : 25m : 30s"),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(width: 1, color: Colors.black26),
                      const ItemInfo(
                          title: "Address", details: "Gaza, Al Remal Building"),
                      Container(width: 1, color: Colors.black26),
                      const ItemInfo(
                          title: "Austin Paul", details: "+00970 593529643"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.asset(
                          ("assets/image/img.jpg"),
                          width: 100.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Rice with vegetables" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            SizedBox(
                              height: 3,
                            ),
                            Text("Notes: without vegetables"),
                            SizedBox(
                              height: 3,
                            ),
                            Text("x5"),
                            SizedBox(
                              height: 3,
                            ),
                            Text("\$199.99" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )),
            Card(
              elevation: 1,
              shadowColor: Colors.black26,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 2),
                child: Row(
                  children: [
                    const Text("Total:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    const SizedBox(width: 5,),
                    const Text("\$2256.9",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(orangeColor),
                      ),
                      child: const Text("Accept order"),
                    )
                  ],
                ),
              ),
            ),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title , style: const TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
          const SizedBox(
            height: 5,
          ),
          Text(details, style: const TextStyle(fontSize: 10 , fontWeight: FontWeight.w300), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
