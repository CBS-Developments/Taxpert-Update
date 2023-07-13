import 'package:flutter/material.dart';

import '../Components/my_Appbar.dart';
import '../Drawers/tp_drawer.dart';

class TaxpayerProfilePage extends StatefulWidget {
  const TaxpayerProfilePage({Key? key}) : super(key: key);

  @override
  State<TaxpayerProfilePage> createState() => _TaxpayerProfilePageState();
}

class _TaxpayerProfilePageState extends State<TaxpayerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),

      body: Row(
        children: [
          TPDrawerContainer()
        ],
      ),

    );
  }
}

