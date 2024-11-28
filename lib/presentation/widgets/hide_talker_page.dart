import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class HideTalkerPage extends StatefulWidget {
  const HideTalkerPage({
    super.key,
    required this.talker,
  });
  final Talker talker;

  @override
  State<HideTalkerPage> createState() => _HideTalkerPageState();
}

class _HideTalkerPageState extends State<HideTalkerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TalkerScreen(talker: widget.talker),
    );
  }
}
