import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customPush(BuildContext context, String path) {
  GoRouter.of(context).push(path);
}

void customRquiredPush(BuildContext context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
