import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/features/dashboard/cubits/dashboard_state.dart';
import 'package:main/features/dashboard/repositories/dashboard_repository.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.repository) : super(DashboardState());

  final DashboardRepository repository;

  Future<void> init() async {}
}
