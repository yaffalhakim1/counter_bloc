import 'dart:developer';

import 'package:counter_bloc/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

import 'counter/counter.dart';

class CounterApp extends MaterialApp {
  const CounterApp({
    Key key,
  }) : super(key: key, home: const CounterPage());
}
