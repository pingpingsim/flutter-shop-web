import 'package:chuchuzakka/components/color.dart';
import 'package:chuchuzakka/components/typography.dart';
import 'package:flutter/material.dart';

ButtonStyle? menuButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    disabledForegroundColor: null,
    foregroundColor: textSecondary,
    textStyle: buttonTextStyle,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16));
