import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class PageIndicator extends StatefulWidget {
  final PageController controller;
  const PageIndicator({ Key? key, required this.controller}) : super(key: key);

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: SmoothPageIndicator(
        controller: widget.controller,
        count: 3,
        effect: const ExpandingDotsEffect(
          spacing: 8.0,
          radius: 0.0,
          dotWidth: 6.0,
          dotHeight: 6.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5,
          dotColor:Colors.grey,
          activeDotColor: Colors.grey,
        ),
      ),
    );
  }
}