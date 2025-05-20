import 'package:flutter/material.dart';
import 'package:playlist/core/core.dart';

class FieldSearchComponent extends StatelessWidget {
  const FieldSearchComponent({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    this.onTap,
    this.onChange,
  });

  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final void Function()? onTap;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 36,
          child: TextFormField(
            controller: controller,
            cursorColor: context.color.blue600,
            keyboardType: TextInputType.text,
            onTap: onTap,
            onChanged: onChange,
            style: context.textStyleColor(
              context.textStyle.body1!,
              context.color.grey900!,
            ),
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              hintText: hintText,
              hintStyle: context.textStyleColor(
                context.textStyle.body1!,
                context.color.grey500_grey900!,
              ),
              prefixIcon: prefixIcon,
              prefixIconConstraints: BoxConstraints(
                minWidth: 40,
              ),
              suffixIcon: suffixIcon,
              suffixIconConstraints: BoxConstraints(
                minWidth: 36,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  color: context.color.grey200_white!,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  color: context.color.grey200_white!,
                  width: 1,
                ),
              ),
              filled: true,
              fillColor: context.color.grey200_white,
            ),
          ),
        ),
      ],
    );
  }
}
