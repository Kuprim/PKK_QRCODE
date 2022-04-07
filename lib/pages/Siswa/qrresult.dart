import 'package:flutter/material.dart';
import 'package:qr_code_scanner/src/types/barcode.dart';

class ResultQr extends StatefulWidget {
  final Barcode val;
  // ignore: use_key_in_widget_constructors
  const ResultQr(this.val);

  @override
  State<ResultQr> createState() => _ResultQrState();
}

class _ResultQrState extends State<ResultQr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Center(
              child: Container(
                child: Text(widget.val.code.toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
