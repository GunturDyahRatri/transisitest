import 'package:flutter/material.dart';

ScaffoldFeatureController buildErrorLayout(
  BuildContext context, {
  String? message,
  String? defaultMessage,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message ?? defaultMessage ?? 'Error'),
    ),
  );
}