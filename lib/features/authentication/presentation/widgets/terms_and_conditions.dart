import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
    required this.onAccept,
  });
  final ValueChanged<bool> onAccept;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Transform.scale(
            scale: 1.2,
            child: Checkbox.adaptive(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              value: isTermAccepted,
              onChanged: (value) {
                isTermAccepted = value!;
                widget.onAccept(isTermAccepted);
                setState(() {});
              },
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'من خلال الضغط على إنشاء حساب جديد، فإنك توافق على ',
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: 'الشروط والأحكام الخاصه بالتطبيق.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Palette.primary),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
