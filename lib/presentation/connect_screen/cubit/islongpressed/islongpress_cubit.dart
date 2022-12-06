import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'islongpress_state.dart';

class IslongpressCubit extends Cubit<IslongpressState> {
  IslongpressCubit() : super(IslongpressState.initial());

  void longpressed() {
    emit(state.copyWith(islongpressed: !state.islongpressed));
  }
}
