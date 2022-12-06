// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'islongpress_cubit.dart';

class IslongpressState extends Equatable {
  final bool islongpressed;

  IslongpressState({required this.islongpressed});

  @override
  List<Object?> get props => [islongpressed];

  factory IslongpressState.initial() {
    return IslongpressState(islongpressed: false);
  }
  IslongpressState copyWith({
    bool? islongpressed,
  }) {
    return IslongpressState(
      islongpressed: islongpressed ?? this.islongpressed,
    );
  }

  @override
  bool get stringify => true;
}
