import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_event.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    on<LoadUserEvent>((event, emit) {
      emit(SwipeLoaded(users: event.users));
    });
    on<SwipeLeftEvent>((event, emit) {
      if (state is SwipeLoaded) {
        try {
          emit(SwipeLoaded(users: List.from((state as SwipeLoaded).users)..remove(event.user)));
        } catch (_) {}
      }
    });
    on<SwipeRightEvent>((event, emit) {
      if (state is SwipeLoaded) {
        try {
          emit(SwipeLoaded(users: List.from((state as SwipeLoaded).users)..remove(event.user)));
        } catch (_) {}
      }
    });

  }

  Stream<SwipeState> mapEventToState(SwipeEvent event) async* {
    if (event is LoadUserEvent) {
      yield* _mapLoadUsersToState(event);
    } else if (event is SwipeLeftEvent) {
      yield* _mapSwipeLeftToState(event, state);
    } else if (event is SwipeRightEvent) {
      yield* _mapSwipeRightToState(event, state);
    }
  }

  Stream<SwipeState> _mapLoadUsersToState(LoadUserEvent event) async* {
    yield SwipeLoaded(users: event.users);
  }

  Stream<SwipeState> _mapSwipeLeftToState(
      SwipeLeftEvent event, SwipeState state) async* {
    if (state is SwipeLoaded) {
      try {
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
      } catch (_) {}
    }
  }

  Stream<SwipeState> _mapSwipeRightToState(
      SwipeRightEvent event, SwipeState state) async* {
    if (state is SwipeLoaded) {
      try {
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
      } catch (_) {}
    }
  }
}
