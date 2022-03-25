import 'package:dev_house/model/pessoa_model.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final PessoaModel? pessoa;

  const ListTileWidget({
    Key? key,
    this.pessoa,
  }) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            widget.pessoa!.photo!,
          ),
        ),
        title: Text(
          //QUANDO ESTA USANDO UM STATFULL TEM Q PASAR UM WIDGET ANTES
          widget.pessoa!.name!,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          widget.pessoa!.ocupation!,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
