import 'package:bus_path/src/models/paradas_model.dart';
import 'package:flutter/material.dart';

class ParadaCard extends StatelessWidget {
  const ParadaCard({Key? key, required this.model}) : super(key: key);
    final Paradas model;
  @override
  Widget build(BuildContext context) {
  final url = model.fieldsProto?.imagenUrlPdd!.stringValue.toString();
    return Card(
                 elevation: 7.0,
                      child: ListTile(
                           tileColor: Colors.orange[100], 
                           leading: CircleAvatar(backgroundImage: NetworkImage(url.toString())),
                          title: Text(model.fieldsProto!.nombrePdd!.stringValue.toString(), style: Theme.of(context).textTheme.headline4,),
                          subtitle: Text(model.fieldsProto!.nomAnteriorPdd!.stringValue.toString(), style: Theme.of(context).textTheme.subtitle2),
                            trailing:  Text(model.fieldsProto!.nomSiguientePdd!.stringValue.toString(), style: Theme.of(context).textTheme.subtitle1),
                                  ),
                    );
  }
}