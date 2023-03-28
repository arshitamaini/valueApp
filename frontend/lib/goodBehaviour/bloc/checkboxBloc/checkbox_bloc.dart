import 'package:bloc/bloc.dart';

part 'checkbox_event.dart';
part 'checkbox_state.dart';

class CheckboxBloc extends Bloc<CheckboxEvent, CheckboxState> {
  CheckboxBloc() : super(CheckboxInitial()) {
    on<CheckboxClickEvent>(_mapCheckboxClickEvent);
  }
  Future<void> _mapCheckboxClickEvent(
      CheckboxClickEvent event, Emitter<CheckboxState> emit) async {
    emit(CheckboxInitial());
    emit(CheckboxClickState(isActive: !event.isActive, index: event.index));
  }
}