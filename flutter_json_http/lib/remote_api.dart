import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_json_http/model/user_model.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({super.key});

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  Future<List<User>> _getUserList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<User> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => User.fromJson(e)).toList();
      }
      return _userList;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      return Future.error(e.message.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    _getUserList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remote API with dio...'),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: _getUserList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var userList = snapshot.data!;
              return ListView.builder(
                itemBuilder: (context, index) {
                  var user = userList[index];
                  return ListTile(
                    title: Text(user.email),
                    subtitle: Text(user.address.toString()),
                    leading: Text(user.id.toString()),
                  );
                },
                itemCount: userList.length,
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
