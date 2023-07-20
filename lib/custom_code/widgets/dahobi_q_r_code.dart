// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DahobiQRCode extends StatefulWidget {
  const DahobiQRCode({
    Key? key,
    this.width,
    this.height,
    this.qrData,
    this.version,
    this.qrSize,
    this.qrColorCircle,
    this.qrColorBorder,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? qrData;
  final int? version;
  final double? qrSize;
  final Color? qrColorCircle;
  final Color? qrColorBorder;

  @override
  _DahobiQRCodeState createState() => _DahobiQRCodeState();
}

class _DahobiQRCodeState extends State<DahobiQRCode> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(widget.qrSize!),
      painter: QrPainter(
        data: widget.qrData!,
        version: widget.version!,
        eyeStyle: QrEyeStyle(
          eyeShape: QrEyeShape.square,
          color: widget.qrColorBorder ??
              Color(0xff128760), //This is the color for border eye squares.
        ),
        dataModuleStyle: QrDataModuleStyle(
          dataModuleShape: QrDataModuleShape.circle,
          color: widget.qrColorCircle ??
              Color(
                  0xffffffff), //Use widget.qrColor as the color of the dots. If qrColor is not provided, fallback to white.
        ),
      ),
    );
  }
}
