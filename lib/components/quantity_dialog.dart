
import 'package:flutter/material.dart';

class QuantityDialog extends StatefulWidget {
  var count;
  QuantityDialog({Key? key, this.count}) : super(key: key);

  @override
  _QuantityDialogState createState() => _QuantityDialogState();
}

class _QuantityDialogState extends State<QuantityDialog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40,
      child: MaterialButton(

          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Quantité"),
                    content: const Text("Choisi ta quantité"),
                    actions: <Widget>[
                      MaterialButton(
                        child: const Text("close"),
                        onPressed: () {
                          Navigator.of(context).pop(context);
                        },
                      ),
                    ],
                  );
                });
          },
          child: Column(
            children: [

              Text("quantity"),


              Text("${widget.count}")

            ],
          )
      ),
    );
  }

}