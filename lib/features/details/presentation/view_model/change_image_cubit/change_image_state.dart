part of 'change_image_cubit.dart';

abstract class ChangeImageState extends Equatable {
  const ChangeImageState();
}

class ChangeImageInitial extends ChangeImageState {
  @override
  List<Object> get props => [];
}

class Changed extends ChangeImageState {
  final int value;

  const Changed({required this.value});

  @override
  List<Object> get props => [value];
}
