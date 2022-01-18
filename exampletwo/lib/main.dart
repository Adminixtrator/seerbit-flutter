import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:seerbit_flutter/new/payload.dart';
import 'package:seerbit_flutter/seerbit_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(home: SeerbitPayment(payload: payload)));
}

PayloadModel payload = PayloadModel(
    currency: 'NGN',
    email: "hello@gmail.com",
    description: "Sneakers",
    fullName: "General Zod",
    country: "NG",
    amount: "100",
    transRef: Random().nextInt(500000).toString(),
    callbackUrl: "callbackUrl",
    publicKey: "SBTESTPUBK_Gq9XaRKyQ05LQ3XHR9NLNpxBgsmgGzg7",
    pocketRef: "",
    vendorId: "Freedah");
