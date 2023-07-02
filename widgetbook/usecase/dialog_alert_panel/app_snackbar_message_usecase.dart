import 'package:flutter/material.dart';
import 'package:n_learn/widgets/dialog_alert_panel/app_snackbar_message.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Custom', type: AppSnackbarMessage)
Widget customAppSnackbarMessageUseCase(BuildContext context) {
  AppSnackbarMessage.show(message: 'This is a custom snackbar',
    duration: Duration(seconds: 3),
    backgroundColor: Colors.blue,
    borderRadius: 16,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {},
    ),
    showIcon: false,);

  return ScaffoldMessenger(
    key: AppSnackbarMessage.scaffoldMessengerKey,
    child: SizedBox.shrink(),
  );
}