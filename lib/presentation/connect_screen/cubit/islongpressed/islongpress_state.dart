// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'islongpress_cubit.dart';

class IslongpressState extends Equatable {
  final bool islongpressed;
  final String pressedindex;
  IslongpressState({
    required this.islongpressed,
    required this.pressedindex,
  });

  @override
  List<Object?> get props => [islongpressed, pressedindex];

  factory IslongpressState.initial() {
    return IslongpressState(islongpressed: false, pressedindex: '');
  }

  @override
  bool get stringify => true;

  IslongpressState copyWith({
    bool? islongpressed,
    String? pressedindex,
  }) {
    return IslongpressState(
      islongpressed: islongpressed ?? this.islongpressed,
      pressedindex: pressedindex ?? this.pressedindex,
    );
  }
}
