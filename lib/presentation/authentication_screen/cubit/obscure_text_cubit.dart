import 'package:bloc/bloc.dart';
import 'package:sgt/presentation/authentication_screen/cubit/obscure_text_state.dart';

class ObscureTextCubit extends Cubit<ObscureTextState> {
  ObscureTextCubit() : super(const ObscureTextState(false));

  void changeVisibility() => emit(ObscureTextState(!state.isVisible));
}
