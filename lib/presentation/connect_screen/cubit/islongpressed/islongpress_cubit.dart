import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'islongpress_state.dart';

class IslongpressCubit extends Cubit<IslongpressState> {
  IslongpressCubit() : super(IslongpressState.initial());

  void longpressed(String index) {
    emit(state.copyWith(
        islongpressed: !state.islongpressed, pressedindex: index));
  }

  void messagepressed() {
    emit(state.copyWith(
      islongpressed: !state.islongpressed,
    ));
  }
}
