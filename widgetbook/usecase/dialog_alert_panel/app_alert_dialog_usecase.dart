import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/widgets/dialog_alert_panel/app_alert_dialog.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppAlertDialog)
Widget customAppAlertDialogUseCase(BuildContext context) {
  TextEditingController _textFieldController = TextEditingController();
  void showAlertDialog() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AppAlertDialog(
        title: context.knobs
            .nullableText(label: 'title', initialValue: 'Alert Dialog'),
        onPressedPositive: (value) {
          Navigator.of(value).pop();
        },
        positiveButtonText:
            context.knobs.nullableText(label: 'positiveButtonText'),
        useMaterial3:
            context.knobs.boolean(label: 'useMaterial3', initialValue: false),
        backgroundColor: context.knobs.options<Color?>(
          label: 'backgroundColor',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<Color>(
              label: 'Pink',
              value: AppColors.pink,
            ),
            const Option<Color>(
              label: 'White',
              value: AppColors.white,
            ),
            const Option<Color>(
              label: 'Primary',
              value: AppColors.primary,
            ),
            const Option<Color>(
              label: 'Secondary',
              value: AppColors.secondary,
            ),
          ],
        ),
        shadowColor: context.knobs.options<Color?>(
          label: 'shadowColor',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<Color>(
              label: 'Pink',
              value: AppColors.pink,
            ),
            const Option<Color>(
              label: 'White',
              value: AppColors.white,
            ),
            const Option<Color>(
              label: 'Black',
              value: AppColors.black,
            ),
            const Option<Color>(
              label: 'Primary',
              value: AppColors.primary,
            ),
            const Option<Color>(
              label: 'Secondary',
              value: AppColors.secondary,
            ),
          ],
        ),
        scrollable:
            context.knobs.boolean(label: 'scrollable', initialValue: false),
        message: context.knobs.nullableText(
            label: 'messageContent', initialValue: 'Alert Dialog Message'),
        elevation: context.knobs.number(label: 'elevation', initialValue: 0),
        alignment:
            context.knobs.options<Alignment?>(label: 'alignment', options: [
          const Option(
            label: 'None',
            value: null,
          ),
          const Option<Alignment>(
              label: 'centerLeft', value: Alignment.centerLeft),
          const Option<Alignment>(
              label: 'centerRight', value: Alignment.centerRight),
          const Option<Alignment>(label: 'default', value: Alignment.center),
          const Option<Alignment>(
              label: 'bottomCenter', value: Alignment.bottomCenter),
          const Option<Alignment>(
              label: 'bottomRight', value: Alignment.bottomRight),
          const Option<Alignment>(
              label: 'bottomLeft', value: Alignment.bottomLeft),
          const Option<Alignment>(
              label: 'topCenter', value: Alignment.topCenter),
          const Option<Alignment>(label: 'topLeft', value: Alignment.topLeft),
          const Option<Alignment>(label: 'topRight', value: Alignment.topRight),
        ]),
        negativeButtonText: context.knobs
            .nullableText(label: 'negativeButtonText', initialValue: ''),
        onPressedNegative: (value) {
          Navigator.of(value).pop();
        },
        borderRadius: context.knobs
            .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),
        borderColor: context.knobs.options<Color?>(
          label: 'Border Color',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<Color>(
              label: 'Pink',
              value: AppColors.pink,
            ),
            const Option<Color>(
              label: 'White',
              value: AppColors.black,
            ),
            const Option<Color>(
              label: 'Primary',
              value: AppColors.primary,
            ),
            const Option<Color>(
              label: 'Secondary',
              value: AppColors.secondary,
            ),
          ],
        ),
        borderWidth:
            context.knobs.number(label: 'borderWidth', initialValue: 0),
        icon: context.knobs.options(
          label: 'Icon',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option(
              label: 'mail',
              value: Icons.mail,
            ),
            const Option(
              label: 'verified_user',
              value: Icons.verified_user,
            ),
          ],
        ),
        iconColor: context.knobs.options<Color?>(
          label: 'Icon Color',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<Color>(
              label: 'Pink',
              value: AppColors.pink,
            ),
            const Option<Color>(
              label: 'White',
              value: AppColors.white,
            ),
            const Option<Color>(
              label: 'Primary',
              value: AppColors.primary,
            ),
            const Option<Color>(
              label: 'Secondary',
              value: AppColors.secondary,
            ),
          ],
        ),
        content: context.knobs.options<Widget?>(
          label: 'contentWidget',
          options: [
            const Option(
              label: 'None',
              value: null,
            ),
            Option(
              label: 'multiline text',
              value: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to confirm this message?'),
                  ],
                ),
              ),
            ),
            Option(
              label: 'rating dialogue',
              value: Container(
                width: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Rate",
                          style: TextStyle(fontSize: 24.0),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              color: Colors.pink,
                              size: 30.0,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.pink,
                              size: 30.0,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.pink,
                              size: 30.0,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.pink,
                              size: 30.0,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.pink,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Add Review",
                          border: InputBorder.none,
                        ),
                        maxLines: 8,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0)),
                        ),
                        child: Text(
                          "Rate Product",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Option(
              label: 'textfield',
              value: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(hintText: "TextField in Dialog"),
              ),
            )
          ],
        ),
      ),
    );
  }

  return TextButton(
    onPressed: showAlertDialog,
    child: Text('Alert Button'),
  );
}

// isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
// isBoxShadow:
// context.knobs.boolean(label: 'isBoxShadow', initialValue: false),
// selectedTileColor: context.knobs.options<Color?>(
// label: 'selectedTileColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// selectedCheckboxColor: context.knobs.options<Color?>(
// label: 'selectedCheckboxColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// unselectedCheckboxColor: context.knobs.options<Color?>(
// label: 'unselectedCheckboxColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// tileColor: context.knobs.options<Color?>(
// label: 'tileColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// borderRadius: context.knobs.number(label: 'border', initialValue: 0),
// secondaryWidget:
// context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Widget>(
// label: 'arrow_forward_ios',
// value: Icon(Icons.arrow_forward_ios),
// ),
// Option<Widget>(
// label: 'outlineButton',
// value: OutlinedButton(
// child: const Text("Say Hi"),
// onPressed: () {
// print("Say Hello");
// },
// ),
// ),
// const Option<Widget>(
// label: 'check',
// value: Icon(Icons.check),
// ),
// ]),
// subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Widget>(
// label: 'text',
// value: Text("It's subtitle"),
// ),
// Option<Widget>(
// label: 'container',
// value: Container(
// color: Colors.teal,
// height: 2,
// ),
// ),
// const Option<Widget>(
// label: 'check',
// value: Icon(Icons.check),
// ),
// ]),
// onChanged: (value) {
// print(value);
// },
// control: context.knobs
//     .options<ListTileControlAffinity>(label: 'controlAffinity', options: [
// const Option(
// label: 'platform',
// value: ListTileControlAffinity.platform,
// ),
// const Option(
// label: 'leading',
// value: ListTileControlAffinity.leading,
// ),
// const Option(
// label: 'trailing',
// value: ListTileControlAffinity.trailing,
// ),
// ]),
// checkColor: context.knobs.options<Color?>(
// label: 'check color',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// checkBoxborderRadius:
// context.knobs.number(label: 'checkboxBorderRadius', initialValue: 0),
// checkBoxborderWidth:
// context.knobs.number(label: 'checkBoxborderWidth', initialValue: 0),
// outlineBorder:
// context.knobs.number(label: 'outlineBorder', initialValue: 0),
// selectedBorderColor: context.knobs.options<Color?>(
// label: 'selectedBorderColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// selectedTitleColor: context.knobs.options<Color?>(
// label: 'selectedTitleColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// titleFontSize: context.knobs.options<double?>(
// label: 'titleFontSize',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<double>(label: 'Small', value: AppSize.sm),
// const Option<double>(label: 'Medium', value: AppSize.md),
// const Option<double>(label: 'Large', value: AppSize.lg),
// ],
// ),
// titleFontWeight: context.knobs.options<FontWeight?>(
// label: 'titleFontWeight',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<FontWeight>(
// label: 'Normal',
// value: FontWeight.normal,
// ),
// const Option<FontWeight>(
// label: 'Bold',
// value: FontWeight.bold,
// ),
// ],
// ),
// unselectedBorderColor: context.knobs.options<Color?>(
// label: 'unselectedBorderColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// unselectedTitleColor: context.knobs.options<Color?>(
// label: 'unselectedTitleColor',
// options: [
// const Option(
// label: 'None',
// value: null,
// ),
// const Option<Color>(
// label: 'Pink',
// value: AppColors.pink,
// ),
// const Option<Color>(
// label: 'White',
// value: AppColors.white,
// ),
// const Option<Color>(
// label: 'Primary',
// value: AppColors.primary,
// ),
// const Option<Color>(
// label: 'Secondary',
// value: AppColors.secondary,
// ),
// ],
// ),
// checkBoxValue: checkBoxList,