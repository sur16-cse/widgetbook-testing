import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'usecase/button/app_dropdown_button_usecase.dart';
import 'usecase/button/app_elevated_buton_usecase.dart';
import 'usecase/button/app_floatingAction_button_usecase.dart';
import 'usecase/button/app_icon_button_usecase.dart';
import 'usecase/button/app_text_button_usecase.dart';
import 'usecase/dialog_alert_panel/app_alert_dialog_usecase.dart';
import 'usecase/dialog_alert_panel/app_snackbar_message_usecase.dart';
import 'usecase/input/app_checkbox_input_usecase.dart';
import 'usecase/input/app_datePicker_input_usecase.dart';
import 'usecase/input/app_radio_input_usecase.dart';
import 'usecase/input/app_slider_input_usecase.dart';
import 'usecase/input/app_switch_input_usecase.dart';
import 'usecase/input/app_textFormField_input_usecase.dart';


class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      frames: [
        WidgetbookFrame.defaultFrame(),
        WidgetbookFrame.deviceFrame(),
        WidgetbookFrame.noFrame()
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('es'), // Spanish, no country code
      ],
      useCaseBuilder: (context, widget) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: widget,
              ),
            ),
          ],
        );
      },
      categories: [
        WidgetbookCategory(
          name: 'nlearn',
          folders: [
            WidgetbookFolder(
              name: 'nlearn-atoms',
              folders: [
                WidgetbookFolder(
                  name: 'n-learn-buttons',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppElevatedButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppElevatedButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Button',
                          builder: (context) =>
                              primaryAppElevatedButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Button',
                          builder: (context) =>
                              secondaryAppElevatedButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Outline Button',
                          builder: (context) =>
                              primaryOutlineAppElevatedButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Outline Button',
                          builder: (context) =>
                              secondaryOutlineAppElevatedButtonUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppIconButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppIconButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Standard Button',
                          builder: (context) =>
                              standardAppIconButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'tooltip Button',
                          builder: (context) =>
                              tooltipAppIconButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Filled Button',
                          builder: (context) =>
                              filledAppIconButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Filled Tonal Button',
                          builder: (context) =>
                              filledTonalAppIconButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Outline Button',
                          builder: (context) =>
                              outlineAppIconButtonUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppFloatingActionButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppFloatingActionButtonUseCase(context),
                        ),
                        // WidgetbookUseCase(
                        //   name: 'Standard Button',
                        //   builder: (context) => standardAppIconButtonUseCase(context),
                        // ),
                        // WidgetbookUseCase(
                        //   name: 'tooltip Button',
                        //   builder: (context) => tooltipAppIconButtonUseCase(context),
                        // ),
                        // WidgetbookUseCase(
                        //   name: 'Filled Button',
                        //   builder: (context) => filledAppIconButtonUseCase(context),
                        // ),
                        // WidgetbookUseCase(
                        //   name: 'Filled Tonal Button',
                        //   builder: (context) =>
                        //       filledTonalAppIconButtonUseCase(context),
                        // ),
                        // WidgetbookUseCase(
                        //   name: 'Outline Button',
                        //   builder: (context) => outlineAppIconButtonUseCase(context),
                        // ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppDropDownButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppDropdownButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                            name: 'Underline Dropdown Button',
                            builder: (context) =>
                                underlineDropdownButtonUseCase(context)),
                        WidgetbookUseCase(
                          name: 'Circular Dropdown Button',
                          builder: (context) =>
                              circularAppAppDropDownButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Gradient Dropdown Button',
                          builder: (context) =>
                              gradientAppDropDownButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Filled Dropdown Button',
                          builder: (context) =>
                              filledAppAppDropDownButtonUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppTextButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppTextButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                            name: 'Primary Button',
                            builder: (context) =>
                                primaryAppTextButtonUseCase(context)),
                        WidgetbookUseCase(
                            name: 'Secondary Button',
                            builder: (context) =>
                                secondaryAppTextButtonUseCase(context)),
                        WidgetbookUseCase(
                          name: 'PrimaryOutline Button',
                          builder: (context) =>
                              primaryAppTextOutlineButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                            name: 'SecondaryOutline Button',
                            builder: (context) =>
                                secondaryOutlineAppTextButtonUseCase(context)),
                      ],
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'n-learn-input',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppTextFormField',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Narayana TextFormField',
                          builder: (context) =>
                              narayanaAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Underline TextFormField',
                          builder: (context) =>
                              underlineAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Outline TextFormField',
                          builder: (context) =>
                              outlineAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Empty TextFormField',
                          builder: (context) =>
                              emptyAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Multiline TextFormField',
                          builder: (context) =>
                              multilineAppTextFormFieldUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Combined TextFormField',
                          builder: (context) =>
                              combinedAppTextFormFieldUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppSlider',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) => customAppSliderUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Slider',
                          builder: (context) =>
                              primaryAppSliderUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Slider',
                          builder: (context) =>
                              secondaryAppSliderUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Standard Slider',
                          builder: (context) =>
                              standardAppSliderUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Polygon Slider',
                          builder: (context) =>
                              polygonAppSliderUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'roundedThemed Slider',
                          builder: (context) =>
                              roundedThemedAppSliderUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppSwitch',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) => customAppSwitchUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'm3',
                          builder: (context) => m3AppSwitchUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'm3Icon',
                          builder: (context) => m3IconAppSwitchUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'm2',
                          builder: (context) => m2AppSwitchUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'm2Icon',
                          builder: (context) => m2IconAppSwitchUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppRadio',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) => customAppRadioUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'nlearn4_1',
                          builder: (context) =>
                              nlearn4_1AppRadioUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'boxShadow',
                          builder: (context) =>
                              boxShadowAppRadioUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppCheckbox',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: (context) =>
                              customAppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'nlearn4_1',
                          builder: (context) =>
                              nlearn4_1AppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'nlearn4_2',
                          builder: (context) =>
                              nlearn4_2AppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'boxShadow',
                          builder: (context) =>
                              boxShadowAppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'leading',
                          builder: (context) =>
                              leadingAppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'leadingCircular',
                          builder: (context) =>
                              leadingCircularAppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'trailing',
                          builder: (context) =>
                              trailingAppCheckboxUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'trailingCircular',
                          builder: (context) =>
                              trailingCircularAppCheckboxUseCase(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'nlearn-molecules',
              folders: [
                WidgetbookFolder(
                  name: 'n-learn-alert-dialog-panel',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppAlertDialog',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'custom',
                          builder: (context) =>
                              customAppAlertDialogUseCase(context),
                        ),
                      ],
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'n-learn-date-time-picker',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppDateTimePicker',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'custom',
                          builder: (context) =>
                              customAppDatePickerUseCase(context),

                        ),
                      ],
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'n-learn-snack-bar-message',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppSnackBar',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'custom',
                          builder: (context) =>
                              customAppSnackbarMessageUseCase(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      textScaleFactors: [1, 2, 3],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
      appInfo: AppInfo(name: 'NLearn Widgets'),
    );
  }
}