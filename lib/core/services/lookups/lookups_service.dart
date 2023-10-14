
import '/core/design_pattern/observer_pattern/observable.dart';

//!3
abstract class LookupsService extends Observable {
  Future<void> getLookups();
  Future<void> getMissedLookups();
}
