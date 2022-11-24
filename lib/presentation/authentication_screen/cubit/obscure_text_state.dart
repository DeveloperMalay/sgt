import 'package:equatable/equatable.dart';

class ObscureTextState extends Equatable {
  final bool isVisible;

  const ObscureTextState(this.isVisible);

  @override
  List<Object?> get props => [isVisible];
}
