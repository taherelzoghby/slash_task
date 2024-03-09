part of 'arrow_disc_cubit.dart';

abstract class ArrowDiscState extends Equatable {
  const ArrowDiscState();
}

class ArrowDiscInitial extends ArrowDiscState {
  @override
  List<Object> get props => [];
}
class ArrowState extends ArrowDiscState {
  final bool arrowDown;

  const ArrowState({required this.arrowDown});

  @override
  List<Object?> get props => [arrowDown];
}