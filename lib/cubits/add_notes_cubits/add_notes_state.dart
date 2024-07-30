abstract class AddNotesState {}

class AddNotesStateInit extends AddNotesState {}

class AddNotesStateLoading extends AddNotesState {}

class AddNotesStateSuccess extends AddNotesState {}

class AddNotesStateFail extends AddNotesState {
  final String errMesage;

  AddNotesStateFail(this.errMesage);
}
