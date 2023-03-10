import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:widgetbook/widgetbook.dart';

import 'usecase/button.dart';


class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

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

        return Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: widget,
          ),
        );
      },
      categories: [
        WidgetbookCategory(name: 'nlearn', folders: [
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
            ],
          ),
          // WidgetbookFolder(name: 'textformField',widgets: [WidgetbookComponent(name: 'customtextFormField', useCases: [WidgetbookUseCase(name: 'custom', builder: (context)=>TextFormFieldWidget(labelText: 'form'),]))] )
        ])
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