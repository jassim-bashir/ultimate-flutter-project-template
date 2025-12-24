import 'package:flutter/material.dart';

abstract class OfflineQueue {
  Future<void> enqueue(Action action);
}
