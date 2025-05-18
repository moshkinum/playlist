import 'package:flutter/material.dart';
import 'package:playlist/core/core.dart';

class ButtonLargeComponent extends StatelessWidget {
  const ButtonLargeComponent({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
  });

  final String label;
  final ImageIcon? icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size(double.infinity, 50),
            textStyle: TextStyle(
              fontFamily: "YS Display",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: Colors.white,
            foregroundColor: context.color.grey900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () => onPressed(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: icon,
                    )
                  : const SizedBox.shrink(),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
