import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class CustomBlocObserver extends BlocObserver {
  final Logger _logger = Logger('CustomBlocObserver');

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _logger.fine('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.info('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.info('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logger.fine(
      'onTransition -- ${bloc.runtimeType}\n'
      'Event: ${transition.event}\n'
      'CurrentState: ${transition.currentState}\n'
      'NextState: ${transition.nextState}',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.severe(
      'onError -- ${bloc.runtimeType}, $error',
      error,
      stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.fine('onClose -- ${bloc.runtimeType}');
  }
}
