import 'package:flutter/material.dart';
import 'package:login_app_task/infrastructure/home/model.dart';
import 'package:login_app_task/infrastructure/home/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: allUsers(),
        builder: (BuildContext context, AsyncSnapshot<AllUsers> snapshot) {
          if (snapshot.hasData) {
            List<Datum> usersList = [];
            for(int i=0;i<6;i++){
              usersList.addAll(snapshot.data!.data);
            }
              return ListView.builder(
                  itemCount: usersList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        foregroundImage: NetworkImage(usersList[index].avatar),
                      ),
                      title: Text(
                        '${usersList[index].firstName} ${usersList[index].lastName}',
                        style: const TextStyle(fontSize: 22),
                      ),
                      subtitle: Text(
                        usersList[index].email,
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  });
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
        },
      ),
    );
  }
}
