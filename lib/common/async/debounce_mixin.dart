import 'dart:async';

/// Logic to prevent multiple method executions within a short time (only keep the last execution)
mixin Debounce {
  static const _defaultDebounceDelay = Duration(milliseconds: 200);
  Timer? _debounceTimer;

  /// Runs the provided callback logic after a delay.
  /// If called again before the delay completes, the previous timer is cancelled.
  void debounce(void Function() callback, {Duration delay = _defaultDebounceDelay}) {
    cancelDebounce();

    _debounceTimer = Timer(delay, callback);
  }

  /// Cancels the current debounce timer, if any.
  void cancelDebounce() {
    _debounceTimer?.cancel();
  }

  /// Disposes the timer.
  void disposeDebounce() {
    cancelDebounce();
  }
}
