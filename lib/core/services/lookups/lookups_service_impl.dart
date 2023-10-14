import 'dart:developer';
import '../../core_export.dart';

//!4
class LookupsServiceImpl extends Observable implements LookupsService {
  @override
  Future<void> getLookups() async {
    log(' getLookups');
    notify();
  }

  @override
  Future<void> getMissedLookups() async {
    notify();
  }

}
