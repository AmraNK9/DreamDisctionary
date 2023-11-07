import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_bloc_event.dart';
part 'main_bloc_state.dart';

class MainBlocBloc extends Bloc<MainBlocEvent, MainBlocState> {
  MainBlocBloc() : super(MainBlocInitial()) {
    on<MainBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
