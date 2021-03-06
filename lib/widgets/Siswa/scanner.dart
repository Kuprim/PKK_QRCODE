import 'package:absensi_qr/pages/Siswa/qrresult.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  bool _flashOn = false;
  GlobalKey _qrKey = GlobalKey();
  late QRViewController _controller;

  get result => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          if (result != null)
            Text(
                'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
          else
            const Text('Scan a code'),
          QRView(
              key: _qrKey,
              overlay: QrScannerOverlayShape(borderColor: Colors.white),
              onQRViewCreated: (QRViewController controller) {
                this._controller = controller;
                controller.scannedDataStream.listen((val) {
                  if (mounted) {
                    _controller.dispose();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => ResultQr(val),
                      ),
                    );
                  }
                });
              }),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Text(
                'Scanner',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _flashOn = !_flashOn;
                      });
                      _controller.toggleFlash();
                    },
                    icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off)),
                IconButton(
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.close)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
