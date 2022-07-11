import 'package:flutter/material.dart';

class LoadingEffect extends StatefulWidget {
  const LoadingEffect({Key? key}) : super(key: key);

  @override
  State<LoadingEffect> createState() => _LoadingEffectState();
}

class _LoadingEffectState extends State<LoadingEffect> with TickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.black,
    );
  }
}