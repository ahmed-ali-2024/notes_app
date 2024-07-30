import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_states.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageStateinit());
}
