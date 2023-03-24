import 'package:flutter/material.dart';
import '../../components/admin_nav.dart';
import '../../helper/admin_enum.dart';
import './components/add_form.dart';

///Add tip data
class AddTips extends StatelessWidget {
  ///image url
  final String url;

  const AddTips({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Tip"),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Image.network(url, fit: BoxFit.fill),
        ),
        AddForm(url: url)
      ])),
       bottomNavigationBar:  const AdminNavBar(selectedMenu: AdminState.tips),
    );
    
  }
}
