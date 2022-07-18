import 'package:bloc/bloc.dart';
import 'package:travel/model/data_model.dart';
import '../cubit/app_cubit_state.dart';
import '../services/data_services.dart';

class AppCutbits extends Cubit<CubitStates> {
  AppCutbits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
