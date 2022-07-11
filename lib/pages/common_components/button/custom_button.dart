// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import './loading_effect.dart';

enum ButtonSize { small, medium, large }

enum ButtonActivity { initial, loading }

enum ButtonState { enabled, disabled }

class CustomButton extends StatefulWidget {
  final ButtonSize buttonSize;
  final ButtonActivity buttonActivity;
  final ButtonState buttonState;
  final String title;
  final callback;
  final route;

  const CustomButton({
    Key? key,
    required this.buttonSize,
    required this.buttonActivity,
    required this.buttonState,
    required this.title,
    this.callback,
    this.route,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  double _bottomHeight = 6;
  double _rightWidth = 6;
  double _mainTop = 0;
  double _mainLeft = 0;

  double buttonWidth = 204;
  Color mainColor = Colors.white;
  Color rightColor = Colors.grey;
  Color bottomColor = Colors.grey;
  Widget centerWidget = Row();

  @override
  Widget build(BuildContext context) {
    getValues();

    return GestureDetector(
      onTapDown: widget.buttonState == ButtonState.enabled ? _unpressed : null,
      onTapUp: widget.buttonState == ButtonState.enabled ? _pressed : null,
      onTapCancel:
          widget.buttonState == ButtonState.enabled ? _pressCancel : null,
      onTap: widget.buttonState == ButtonState.enabled
          ? () {
              if (widget.route != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget.route,
                    ));
              } else {
                widget.callback("1");
              }
            }
          : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 70),
        margin: const EdgeInsets.only(left: 10),
        height: 54,
        width: buttonWidth,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 70),
              top: _mainTop,
              left: _mainLeft,
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewX(0),
                child: Container(
                  height: 50,
                  width: buttonWidth - 3,
                  color: mainColor,
                  child: Center(child: centerWidget),
                ),
              ),
            ),
            Positioned(
              child: Transform(
                transform: Matrix4.skewX(0.5),
                origin: const Offset(0, 0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 70),
                  height: _bottomHeight,
                  width: buttonWidth - 3,
                  color: bottomColor,
                ),
              ),
              left: 1,
              top: 50,
            ),
            Positioned(
              child: Transform(
                origin: const Offset(0, 0),
                transform: Matrix4.skewY(0.5),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 70),
                  width: _rightWidth,
                  height: 51.0,
                  color: rightColor,
                ),
              ),
              left: buttonWidth - 5,
            ),
          ],
        ),
      ),
    );
  }

  void _pressed(_) {
    setState(() {
      _bottomHeight = 6;
      _rightWidth = 6;
      _mainTop = 0;
      _mainLeft = 0;
    });
  }

  void _pressCancel() {
    setState(() {
      _bottomHeight = 0;
      _rightWidth = 0;
      _mainTop = 3;
      _mainLeft = 3;
    });
  }

  void _unpressed(_) => _pressCancel();

  void getValues() {
    if (widget.buttonSize == ButtonSize.small) {
      buttonWidth = 204;
    }

    if (widget.buttonSize == ButtonSize.medium) {
      buttonWidth = 255;
    }

    if (widget.buttonSize == ButtonSize.large) {
      buttonWidth = MediaQuery.of(context).size.width * 0.9;
    }

    if (widget.buttonState == ButtonState.enabled) {
      mainColor = Colors.white;
      rightColor = const Color.fromRGBO(216, 216, 216, 1);
      bottomColor = const Color.fromRGBO(216, 216, 216, 1);
    }
    if (widget.buttonState == ButtonState.disabled) {
      mainColor = Colors.grey;
      rightColor = const Color.fromRGBO(211, 211, 211, 1);
      bottomColor = const Color.fromRGBO(88, 88, 88, 1);
    }

    if (widget.buttonActivity == ButtonActivity.initial) {
      if (widget.buttonState == ButtonState.disabled) {
        centerWidget = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
        );
      }
      if (widget.buttonState == ButtonState.enabled) {
        centerWidget = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ],
        );
      }
    } else if (widget.buttonActivity == ButtonActivity.loading) {
      centerWidget = const LoadingEffect();
    }
  }
}
