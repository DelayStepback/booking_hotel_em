import 'package:booking_hotel_em/data/repositories/mock/booking_room_repository_mock.dart';
import 'package:booking_hotel_em/data/repositories/mock/hotel_repository_mock.dart';
import 'package:booking_hotel_em/presentation/bloc/booking_bloc/booking_bloc.dart';
import 'package:booking_hotel_em/presentation/bloc/hotel_bloc/hotel_bloc.dart';
import 'package:booking_hotel_em/presentation/hotel_screen/hotel_screen.dart';
import 'package:booking_hotel_em/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/mock/rooms_repository_mock.dart';
import '../../presentation/bloc/rooms_bloc/rooms_bloc.dart';
import '../../presentation/booking_screen/booking_screen.dart';
import '../../presentation/paid_screen/paid_screen.dart';
import '../../presentation/rooms_screen/rooms_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/splash",
  routes: <RouteBase>[
    GoRoute(
      name: "splash",
      path: "/splash",
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
        name: 'hotel',
        path: "/hotel/:id",
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
              // TODO: change HotelRepositoryImpl(HotelDataSource())
          // HotelRepositoryMock()
              create: (context) => HotelBloc(HotelRepositoryMock()),
              child: HotelScreen(
                id: state.pathParameters['id']!,
              ),
            ),
       ),

    GoRoute(
      name: "rooms",
      path: "/hotel/:id/rooms/:title",
      builder: (BuildContext context, GoRouterState state) =>
          BlocProvider(
            // TODO: change HotelRepositoryImpl(HotelDataSource())
            create: (context) => RoomsBloc(RoomsRepositoryMock()),
            child: RoomsScreen(
              id: state.pathParameters['id']!,
              title: state.pathParameters['title']!,
            ),
          ),
    ),
    GoRoute(
      name: "booking",
      path: "/hotel/:id/rooms/:title/booking/:roomId",
      builder: (BuildContext context, GoRouterState state) =>
          BlocProvider(
            create: (context) => BookingBloc(BookingRoomRepositoryMock(),),
            child: BookingScreen(
              id: state.pathParameters['id']!,
              title: state.pathParameters['title']!,
              roomId: state.pathParameters['roomId']!,
            ),
          ),
    ),
    GoRoute(
      name: "paid",
      path: "/hotel/:id/rooms/:title/booking/:roomId/paid",
      builder: (BuildContext context, GoRouterState state) =>
          PaidScreen(
            id: state.pathParameters['id']!,
            title: state.pathParameters['title']!,
            roomId: state.pathParameters['roomId']!,
          ),
    ),
  ],
);
