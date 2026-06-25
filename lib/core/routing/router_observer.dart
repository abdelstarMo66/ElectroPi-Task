import 'package:flutter/material.dart';

class MyRouterObserver extends NavigatorObserver {
  final List<Route<dynamic>> _routeStack = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.add(route);
    _printStack('PUSH');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);
    _printStack('POP');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);
    _printStack('REMOVE');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (oldRoute != null) {
      _routeStack.remove(oldRoute);
    }
    if (newRoute != null) {
      _routeStack.add(newRoute);
    }
    _printStack('REPLACE');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  void _printStack(String action) {
    debugPrint('--- Route Stack after $action ---');
    for (var i = 0; i < _routeStack.length; i++) {
      debugPrint('[$i]: ${_routeStack[i].settings.name}');
    }
    debugPrint('----------------------------------');
  }
}
