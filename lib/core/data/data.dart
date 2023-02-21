import 'package:flutter/material.dart';

import './models/movies.dart';
import '../constants/constants.dart';

final section1 = List.generate(
  16,
  (index) => Seat(
    isHidden: [0, 1, 4].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section2 = List.generate(
  16,
  (index) => Seat(
    isHidden: [4, 5, 6, 7].contains(index),
    isOcuppied: [12, 13].contains(index),
  ),
);

final section3 = List.generate(
  16,
  (index) => Seat(
    isHidden: [2, 3, 7].contains(index),
    isOcuppied: [13, 14, 15].contains(index),
  ),
);

final section4 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [1, 2, 3].contains(index),
  ),
);

final section5 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section6 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [14].contains(index),
  ),
);

final seats = [
  section1,
  section2,
  section3,
  section4,
  section5,
  section6,
];

const seatTypes = [
  SeatType(name: 'Available', color: Colors.grey),
  SeatType(name: 'Booked', color: Colors.black),
  SeatType(name: 'Selection', color: AppColors.primaryColor),
];

const dates = [
  MovieDate(day: 11, month: 'OCT', hour: '6:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '8:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '9:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '10:00PM'),
];

final movies = [
  Movie(
    name: 'Black Widow',
    image: 'assets/images/black_widow.jpg',
    screenPreview: 'assets/images/black_widow.jpg',
    description:
        'Natasha Romanoff confronts the darker parts of her ledger when '
        'when a dangerous conspiracy with ties to her past arises.',
    type: 'Action',
    hours: 2,
    director: 'Cate Shortland',
    stars: 5,
    actors: [
      'Scarlett Johansson',
      'Florence Pugh',
      'Rachel Weisz',
      'David Harbour',
      'Ray Winstone',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Cosmopolis',
    image: 'assets/images/cosmopolis.jpg',
    screenPreview: 'assets/images/cosmopolis.jpg',
    description:
        'Riding across Manhattan in a stretch limo in order to get a haircut, '
        'a 28-year-old billionaire asset manager\'s day devolves into an '
        'odyssey with a cast of characters that start to tear his world apart.',
    type: 'Crime',
    hours: 2,
    director: 'David Cronenberg',
    stars: 5,
    actors: [
      'Robert Pattinson',
      'Sarah Gadon',
      'Paul Giamatti',
      'Kevin Durand',
      'Abdul Ayoola',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Venom',
    image: 'assets/images/venom.jpg',
    screenPreview: 'assets/images/venom.jpg',
    description:
        'A failed reporter is bonded to an alien entity, one of many symbiotes who '
        'have invaded Earth. But the being takes a liking to Earth and decides to '
        'protect it.',
    type: 'Adventure',
    hours: 2,
    director: 'Ruben Fleischer',
    stars: 5,
    actors: [
      'Tom Hardy',
      'Michelle Williams',
      'Riz Ahmed',
      'Scott Haze',
      'Reid Scott',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Venom 2',
    image: 'assets/images/venom2.jpeg',
    screenPreview: 'assets/images/venom2.jpeg',
    description:
        'Eddie Brock attempts to reignite his career by interviewing serial killer Cletus '
        'Kasady, who becomes the host of the symbiote Carnage and escapes prison after '
        'a failed execution.',
    type: 'Adventure',
    hours: 2,
    director: 'Andy Serkis',
    stars: 5,
    actors: [
      'Tom Hardy',
      'Woody Harrelson',
      'Michelle Williams',
      'Naomie Harris',
      'Reid Scott',
    ],
    dates: dates,
    seats: seats,
  ),
  Movie(
    name: 'Sensation',
    image: 'assets/images/sensation.jpg',
    screenPreview: 'assets/images/sensation.jpg',
    description:
        'When a lowly postman is inducted into a top-secret superhuman DNA program at '
        'a research facility, it\'s revealed that he\'ll be able to receive, control '
        'and send information based on the senses of others.',
    type: 'Mystery',
    hours: 2,
    director: 'Martin Grof',
    stars: 5,
    actors: [
      'Eugene Simon',
      'Emily Wyatt',
      'Jennifer Martin',
      'Marybeth Havens',
      'Anil Desai',
    ],
    dates: dates,
    seats: seats,
  ),
  // Movie(
  //   name: 'Aladdin ',
  //   image: 'assets/images/aladdin.jpg',
  //   screenPreview: 'assets/images/aladdin.jpg',
  //   description:
  //       'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
  //       'a magic lamp that has the power to make their deepest wishses come true.',
  //   type: 'Fantasy',
  //   hours: 2,
  //   director: 'Ritchie',
  //   stars: 5,
  //   actors: [
  //     'Will Smith',
  //     'Joey Ansah',
  //     'Naomi Scott',
  //     'Marwan Kenzari',
  //     'Nasim Pedrad',
  //   ],
  //   dates: dates,
  //   seats: seats,
  // ),
  // Movie(
  //   name: 'Aladdin 2 ',
  //   image: 'assets/images/aladdin_2.jpg',
  //   screenPreview: 'assets/images/aladdin_2.jpg',
  //   description:
  //       'A kind-hearted street urchin and a power-hungry Grand Vizier vie for '
  //       'a magic lamp that has the power to make their deepest wishses come true.',
  //   type: 'Fantasy',
  //   hours: 2,
  //   director: 'Ritchie',
  //   stars: 5,
  //   actors: [
  //     'Will Smith',
  //     'Joey Ansah',
  //     'Naomi Scott',
  //     'Marwan Kenzari',
  //     'Nasim Pedrad',
  //   ],
  //   dates: dates,
  //   seats: seats,
  // ),
];
