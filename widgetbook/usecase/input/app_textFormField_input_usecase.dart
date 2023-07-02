import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_sizes.dart';
import 'package:n_learn/widgets/input/app_textFormfield_input.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Custom', type: AppTextFormFieldInput)
Widget customAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  // print(hasGradient.value);
  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: '',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
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

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: '',
          ),

          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: '',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
              context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 0),

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

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),
          prefixIcon: context.knobs.options(
            label: 'prefixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'search',
                value: Icons.search_off_rounded,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              )
            ],
          ),

          preIconSize:
              context.knobs.number(label: 'prefixIconSize', initialValue: 14),

          suffixIcon: context.knobs.options(
            label: 'suffixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'cross',
                value: Icons.cut,
              ),
            ],
          ),

          sufIconSize:
              context.knobs.number(label: 'suffixIconSize', initialValue: 14),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
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

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: null),

          previousValue: context.knobs.options<String?>(
            label: 'Previous Value',
            options: [
              const Option<String>(
                label: 'None',
                value: '',
              ),
              const Option<String>(label: 'previous', value: 'previous value'),
            ],
          ),

          buildCounter:
              context.knobs.boolean(label: 'buildCounter', initialValue: false),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          underlineHeight:
              context.knobs.number(label: 'underlineHeight', initialValue: 0),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),

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

          iconSize: context.knobs.options(
            label: 'IconSize',
            options: [
              const Option<double>(label: 'Small', value: AppSize.sm),
              const Option<double>(label: 'Medium', value: AppSize.md),
              const Option<double>(label: 'Large', value: AppSize.lg),
            ],
          ),
        );
      });
}

@WidgetbookUseCase(name: 'Narayana', type: AppTextFormFieldInput)
Widget narayanaAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  // print(hasGradient.value);
  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.narayana(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: '',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
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

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: '',
          ),

          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: 'Full Name',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
              context.knobs.options(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 0),

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

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),
          prefixIcon: context.knobs.options(
            label: 'prefixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'search',
                value: Icons.search_off_rounded,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              )
            ],
          ),

          preIconSize:
              context.knobs.number(label: 'prefixIconSize', initialValue: 14),

          suffixIcon: context.knobs.options(
            label: 'suffixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'cross',
                value: Icons.cut,
              ),
            ],
          ),
          sufIconSize:
              context.knobs.number(label: 'suffixIconSize', initialValue: 14),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: null),

          previousValue: context.knobs.options<String?>(
            label: 'Previous Value',
            options: [
              const Option<String>(
                label: 'None',
                value: '',
              ),
              const Option<String>(label: 'previous', value: 'previous value'),
            ],
          ),

          buildCounter:
              context.knobs.boolean(label: 'buildCounter', initialValue: false),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),

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

          iconSize: context.knobs.options(
            label: 'IconSize',
            options: [
              const Option<double>(label: 'Medium', value: AppSize.md),
              const Option<double>(label: 'Small', value: AppSize.sm),
              const Option<double>(label: 'Large', value: AppSize.lg),
            ],
          ),
        );
      });
}

@WidgetbookUseCase(name: 'Underline', type: AppTextFormFieldInput)
Widget underlineAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.underline(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: '',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
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

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: '',
          ),

          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: 'Email Address',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
              context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

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

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),
          prefixIcon: context.knobs.options(
            label: 'prefixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'search',
                value: Icons.search_off_rounded,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              )
            ],
          ),

          preIconSize:
              context.knobs.number(label: 'prefixIconSize', initialValue: 14),

          suffixIcon: context.knobs.options(
            label: 'suffixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'cross',
                value: Icons.cut,
              ),
            ],
          ),
          sufIconSize:
              context.knobs.number(label: 'suffixIconSize', initialValue: 14),
          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
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

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: null),

          previousValue: context.knobs.options<String?>(
            label: 'Previous Value',
            options: [
              const Option<String>(
                label: 'None',
                value: '',
              ),
              const Option<String>(label: 'previous', value: 'previous value'),
            ],
          ),

          buildCounter:
              context.knobs.boolean(label: 'buildCounter', initialValue: false),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          underlineHeight:
              context.knobs.number(label: 'underlineHeight', initialValue: 0),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),

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

          iconSize: context.knobs.options(
            label: 'IconSize',
            options: [
              const Option<double>(label: 'Small', value: AppSize.sm),
              const Option<double>(label: 'Medium', value: AppSize.md),
              const Option<double>(label: 'Large', value: AppSize.lg),
            ],
          ),
        );
      });
}

@WidgetbookUseCase(name: 'Outline', type: AppTextFormFieldInput)
Widget outlineAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.outline(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: '',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
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

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: '',
          ),

          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: 'Email Address',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<Color>(
                label: 'White',
                value: AppColors.white,
              ),
              const Option<Color>(
                label: 'Pink',
                value: AppColors.pink,
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

          inputFontSize:
              context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 1),

          borderRadius: context.knobs
              .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),

          borderColor: context.knobs.options<Color?>(
            label: 'Border Color',
            options: [
              const Option<Color>(
                label: 'Black',
                value: AppColors.black,
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
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),
          prefixIcon: context.knobs.options(
            label: 'prefixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'search',
                value: Icons.search_off_rounded,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              )
            ],
          ),

          preIconSize:
              context.knobs.number(label: 'prefixIconSize', initialValue: 14),

          suffixIcon: context.knobs.options(
            label: 'suffixIcon',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'cross',
                value: Icons.cut,
              ),
            ],
          ),

          sufIconSize:
              context.knobs.number(label: 'suffixIconSize', initialValue: 14),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
            options: [
              const Option<Color>(
                label: 'White',
                value: AppColors.white,
              ),
              const Option<Color>(
                label: 'Pink',
                value: AppColors.pink,
              ),
              const Option<Color>(
                label: 'Primary',
                value: AppColors.primary,
              ),
              const Option<Color>(
                label: 'Secondary',
                value: AppColors.secondary,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: null),

          previousValue: context.knobs.options<String?>(
            label: 'Previous Value',
            options: [
              const Option<String>(
                label: 'None',
                value: '',
              ),
              const Option<String>(label: 'previous', value: 'previous value'),
            ],
          ),

          buildCounter:
              context.knobs.boolean(label: 'buildCounter', initialValue: false),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),

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

          iconSize: context.knobs.options(
            label: 'IconSize',
            options: [
              const Option<double>(label: 'Small', value: AppSize.sm),
              const Option<double>(label: 'Medium', value: AppSize.md),
              const Option<double>(label: 'Large', value: AppSize.lg),
            ],
          ),
        );
      });
}

@WidgetbookUseCase(name: 'Empty', type: AppTextFormFieldInput)
Widget emptyAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  // print(hasGradient.value);
  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.empty(
          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
              context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 0),

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

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
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

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: null),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          underlineHeight:
              context.knobs.number(label: 'underlineHeight', initialValue: 0),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),
        );
      });
}

@WidgetbookUseCase(name: 'Multiline', type: AppTextFormFieldInput)
Widget multilineAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  // print(hasGradient.value);
  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.multiline(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: 'I am multiline',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
            options: [
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
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: 'Hey I am multiline and upto 50 characters',
          ),

          validatorString: (value) {
            if (context.knobs
                    .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: 'multiline',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [
                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
              context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 1),

          borderRadius: context.knobs
              .slider(label: 'Border Radius', initialValue: 8, min: 0, max: 50),

          borderColor: context.knobs.options<Color?>(
            label: 'Border Color',
            options: [
              const Option(
                label: 'Black',
                value: AppColors.black,
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

          obscureText:
              context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
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

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 7),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: 250),

          buildCounter:
              context.knobs.boolean(label: 'buildCounter', initialValue: true),

          autoCorrect:
              context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
              context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
                  'add values separated by comma left,top,right,bottom'),
        );
      });
}

@WidgetbookUseCase(name: 'Combined', type: AppTextFormFieldInput)
Widget combinedAppTextFormFieldUseCase(BuildContext context) {
  ValueNotifier<String> _value = ValueNotifier('');
  TextEditingController _textEditingController = TextEditingController();

  // print(hasGradient.value);
  return ValueListenableBuilder<String>(
      valueListenable: _value,
      builder: (BuildContext context, String _value, Widget? child) {
        return AppTextFormFieldInput.combined(
          hintText: context.knobs.nullableText(
            label: 'hintText',
            initialValue: 'I am combined',
          ),

          hintColor: context.knobs.options<Color?>(
            label: 'hint Color',
            options: [
              const Option<Color>(
                label: 'Pink',
                value: AppColors.pink,
              ),
              const Option(
                label: 'None',
                value: null,
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

          hintWeight: context.knobs.options<FontWeight?>(
            label: 'hintFontWeight',
            options: [

              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          helperText: context.knobs.nullableText(
            label: 'helperText',
            initialValue: 'Hey I am combined',
          ),

          validatorString: (value) {
            if (context.knobs
                .boolean(label: 'validate field', initialValue: false) &&
                value!.isEmpty) {
              print("hello");
              return 'Please enter some text';
            }
            return null;
          },

          validateForm: context.knobs
              .boolean(label: 'validate form', initialValue: false),

          labelText: context.knobs.nullableText(
            label: 'labelText',
            initialValue: 'combined',
          ),

          labelColor: context.knobs.options<Color?>(
            label: 'label Color',
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

          labelWeight: context.knobs.options<FontWeight?>(
            label: 'labelFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          floatingLabelBehavior: context.knobs.options<FloatingLabelBehavior>(
              label: 'FloatingLabelBehaviour',
              options: [

                const Option<FloatingLabelBehavior>(
                    label: 'always', value: FloatingLabelBehavior.always),
                const Option<FloatingLabelBehavior>(
                    label: 'auto', value: FloatingLabelBehavior.auto),
                const Option<FloatingLabelBehavior>(
                    label: 'never', value: FloatingLabelBehavior.never),
              ]),

          keyboardType: context.knobs
              .options<TextInputType?>(label: 'keyboardType', options: [
            const Option<TextInputType>(
                label: 'text', value: TextInputType.text),
            const Option<TextInputType>(
                label: 'number', value: TextInputType.number),
            const Option<TextInputType>(
                label: 'emailAddress', value: TextInputType.emailAddress),
            const Option<TextInputType>(label: 'url', value: TextInputType.url),
            const Option<TextInputType>(
                label: 'phone', value: TextInputType.phone),
            const Option<TextInputType>(
                label: 'visiblePassword', value: TextInputType.visiblePassword),
            const Option<TextInputType>(
                label: 'multiline', value: TextInputType.multiline),
            const Option<TextInputType>(
                label: 'none', value: TextInputType.none),
          ]),

          textInputAction: context.knobs
              .options<TextInputAction>(label: 'textInputAction', options: [
            const Option<TextInputAction>(
                label: 'done', value: TextInputAction.done),
            const Option<TextInputAction>(
                label: 'next', value: TextInputAction.next),
            const Option<TextInputAction>(
                label: 'previous', value: TextInputAction.previous),
            const Option<TextInputAction>(
                label: 'send', value: TextInputAction.send),
            const Option<TextInputAction>(
                label: 'go', value: TextInputAction.go),
          ]),

          inputColor: context.knobs.options<Color?>(
            label: 'Input Color',
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

          inputFontSize:
          context.knobs.options<double?>(label: 'InputFontSize', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),

          inputFontWeight: context.knobs.options<FontWeight?>(
            label: 'inputFontWeight',
            options: [
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<FontWeight>(
                label: 'Normal',
                value: FontWeight.normal,
              ),
              const Option<FontWeight>(
                label: 'Bold',
                value: FontWeight.bold,
              ),
            ],
          ),

          textCapitalization: context.knobs.options<TextCapitalization?>(
            label: 'inputTextCapitalisation',
            options: [
              const Option(
                label: 'None',
                value: TextCapitalization.none,
              ),
              const Option<TextCapitalization>(
                label: 'characters',
                value: TextCapitalization.characters,
              ),
              const Option<TextCapitalization>(
                label: 'sentences',
                value: TextCapitalization.sentences,
              ),
              const Option<TextCapitalization>(
                label: 'words',
                value: TextCapitalization.words,
              ),
            ],
          ),

          outlineWidth:
          context.knobs.number(label: 'borderWidth', initialValue: 1),

          borderRadius: context.knobs
              .slider(label: 'Border Radius', initialValue: 10, min: 0, max: 50),

          borderColor: context.knobs.options<Color?>(
            label: 'Border Color',
            options: [

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
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          obscureText:
          context.knobs.boolean(label: 'obscure', initialValue: false),

          obscuringCharacter: context.knobs.text(
            label: 'obscuringCharacter',
            initialValue: '*',
          ),

          // initialValue: context.knobs.nullableText(
          //   label: 'initialValue',
          //   initialValue: null,
          // ),
          prefixIcon: context.knobs.options(
            label: 'prefixIcon',
            options: [

              const Option(
                label: 'search',
                value: Icons.search_off_rounded,
              ),
              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          preIconSize:
          context.knobs.number(label: 'prefixIconSize', initialValue: 14),

          suffixIcon: context.knobs.options(
            label: 'suffixIcon',
            options: [

              const Option(
                label: 'plus',
                value: Icons.plus_one,
              ),
              const Option(
                label: 'add_feather_fill',
                value: Icons.add,
              ),
              const Option(
                label: 'cross',
                value: Icons.cut,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
            ],
          ),

          sufIconSize:
          context.knobs.number(label: 'suffixIconSize', initialValue: 14),

          onChanged: (value) {
            _value =
                value; // set the value of _name to the new value of the text field
          },

          fillColor: context.knobs.options<Color?>(
            label: 'Fill Color',
            options: [
              const Option<Color>(
                label: 'White',
                value: AppColors.white,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
              const Option<Color>(
                label: 'Pink',
                value: AppColors.pink,
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

          focusBorder: context.knobs.options<Color?>(
            label: 'FocusBorder Color',
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

          maxLines: context.knobs.number(label: 'maxLines', initialValue: 1),

          maxLength: context.knobs
              .nullableNumber(label: 'maxLength', initialValue: 10),

          previousValue: context.knobs.options<String?>(
            label: 'Previous Value',
            options: [
              const Option<String>(
                label: 'None',
                value: '',
              ),
              const Option<String>(label: 'previous', value: 'previous value'),
            ],
          ),

          buildCounter:
          context.knobs.boolean(label: 'buildCounter', initialValue: true),

          autoCorrect:
          context.knobs.boolean(label: 'autoCorrect', initialValue: false),

          textAlign:
          context.knobs.options<TextAlign>(label: 'TextAlign', options: [
            const Option<TextAlign>(label: 'start', value: TextAlign.start),
            const Option<TextAlign>(label: 'left', value: TextAlign.left),
            const Option<TextAlign>(label: 'center', value: TextAlign.center),
            const Option<TextAlign>(label: 'end', value: TextAlign.end),
            const Option<TextAlign>(label: 'justify', value: TextAlign.justify),
            const Option<TextAlign>(label: 'right', value: TextAlign.right),
          ]),

          underlineHeight:
          context.knobs.number(label: 'underlineHeight', initialValue: 0),

          controller: _textEditingController,

          padding: context.knobs.text(
              label: 'contentPaddingValue',
              initialValue: '8,8,8,8',
              description:
              'add values separated by comma left,top,right,bottom'),

          icon: context.knobs.options(
            label: 'Icon',
            options: [
              const Option(
                label: 'verified_user',
                value: Icons.verified_user,
              ),
              const Option(
                label: 'None',
                value: null,
              ),
              const Option(
                label: 'mail',
                value: Icons.mail,
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

          iconSize: context.knobs.options(
            label: 'IconSize',
            options: [

              const Option<double>(label: 'Medium', value: AppSize.md),
              const Option<double>(label: 'Small', value: AppSize.sm),
              const Option<double>(label: 'Large', value: AppSize.lg),
            ],
          ),
        );
      });
}