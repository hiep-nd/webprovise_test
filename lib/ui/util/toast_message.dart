import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SfToastMessages {
  Widget build({
    required BuildContext context,
    ToastMessageSize size = ToastMessageSize.medium,
    ToastMessageState state = ToastMessageState.info,
    bool darkMode = false,
    required String text,
  }) {
    final space = size == ToastMessageSize.medium ? 10.0 : 7.0;
    final textStyle = size == ToastMessageSize.medium
        ? Theme.of(context).textTheme.bodyMedium?.apply(
              color: Colors.white,
            )
        : Theme.of(context).textTheme.bodyMedium?.apply(
              color: Colors.white,
            );
    final color = _colors[state];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: color,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: space),
          Expanded(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }

  void show({
    required BuildContext context,
    ToastMessageSize size = ToastMessageSize.medium,
    ToastMessageState state = ToastMessageState.info,
    required String text,
    Duration duration = const Duration(seconds: 2),
  }) {
    _fToast.init(context);
    _fToast.showToast(
      child: SfToastMessages().build(
        size: size,
        state: state,
        text: text,
        context: context,
      ),
      positionedToastBuilder: (context, child) {
        return Positioned(
          bottom: 50.0,
          left: 16.0,
          right: 16.0,
          child: child,
        );
      },
      toastDuration: duration,
    );
  }

  // Privates
  late final _colors = {
    ToastMessageState.success: Colors.green,
    ToastMessageState.warning: Colors.orange,
    ToastMessageState.error: Colors.red,
    ToastMessageState.info: Colors.yellow,
  };
  final FToast _fToast = FToast();
}

enum ToastMessageSize { medium, small }

enum ToastMessageState { success, warning, error, info }
