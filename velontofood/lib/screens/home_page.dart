import 'package:flutter/material.dart';
import 'package:velontofood/models/task_model.dart';
import 'package:velontofood/screens/task_details_page.dart';
import 'package:velontofood/utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<TaskModel> newTaskList = [] ;
  List<TaskModel> preparingTaskList = [] ;
  List<TaskModel> deliveryTaskList = [] ;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    newTaskList.add(TaskModel(title: "#00350", time: "As soon as", price: "99.90 \$", status: 0));
    newTaskList.add(TaskModel(title: "#00350", time: "Today ,10:45", price: "99.90 \$", status: 0));
    newTaskList.add(TaskModel(title: "#00355", time: "Today ,12:45", price: "250.90 \$", status: 0));
    newTaskList.add(TaskModel(title: "#00355", time: "Today ,2:00", price: "20.20 \$", status: 0));

    preparingTaskList.add(TaskModel(title: "#00450", time: "Today ,11:45", price: "99.90 \$", status: 1));
    preparingTaskList.add(TaskModel(title: "#00250", time: "Today ,10:45", price: "99.90 \$", status: 1));

    deliveryTaskList.add(TaskModel(title: "#00360", time: "Sat ,10:45", price: "99.90 \$", status: 2));
    deliveryTaskList.add(TaskModel(title: "#00445", time: "Sun ,12:45", price: "250.90 \$", status: 2));
    deliveryTaskList.add(TaskModel(title: "#00685", time: "Sat ,2:00", price: "20.20 \$", status: 2));
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         
         child: Padding(
          padding: const EdgeInsets.only(left: 20 ,right: 20 , top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Task List", style: TextStyle(fontSize: 25,color: Colors.black , fontWeight: FontWeight.w900)),
              const SizedBox(height: 20,),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: AppColors.primaryColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'New',
                    ),
                    Tab(
                      text: 'Preparing',
                    ),
                    Tab(
                      text: 'Delivery',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:  [
                    TasksListPage(data: newTaskList),
                    TasksListPage(data: preparingTaskList),
                    TasksListPage(data: deliveryTaskList),
                  ],
                ),
              ),
            ],
          ),
      ),
       ),
    );
  }
}

class TasksListPage extends StatelessWidget {
  const TasksListPage({Key? key, required this.data}) : super(key: key);
  final List<TaskModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: data.length,
        itemBuilder: (context, index) {
          TaskModel taskModel = data[index];
          return TaskItem(taskModel: taskModel);
        });
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, TaskInfoPage.id);
      },
      child: Card(
        elevation: 1,
        shadowColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Task ${taskModel.title}" , style: const TextStyle(fontSize: 14,color: Colors.black),),
                    const SizedBox(height:12 ,),
                    Row(
                      children:  [
                        const Icon(Icons.access_time , size: 12),
                        Text(taskModel.time , style: const TextStyle(fontSize: 12,color: Colors.black87)),
                      ],
                    ),
                    const SizedBox(height:10 ,),
                  ],
                ),
              ),
               Text(taskModel.price,style: const TextStyle(fontSize: 15,color: Colors.black , fontWeight: FontWeight.bold)),


            ],
          ),
        ),
      ),
    );
  }
}
