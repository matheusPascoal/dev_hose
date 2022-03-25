import 'package:dev_house/model/pessoa_model.dart';
import 'package:dev_house/repository/pessoa_repositorie.dart';
import 'package:dev_house/widget/listTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PessoaModel> listaPessoas = [];
  getUsers() async {
    var result = await PessoaRepository().getUsers();
    listaPessoas = result;
    setState(() {});
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Dev House')),
      body: Column(
        children: [
          SizedBox(height: 80),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: listaPessoas
                  .map((e) => Column(
                        children: [
                          ListTileWidget(
                            pessoa: e,
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
