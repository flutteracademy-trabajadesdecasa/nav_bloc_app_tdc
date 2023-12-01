// ignore_for_file: public_member_api_docs, sort_constructors_first
class CounterState {
  final int counter;

  CounterState({required this.counter});

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  CounterState copyWith({int? counter}) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

// class Ropa {
//   List<Camisetas> camisetas;
//   List<Pantalones> pantalones;
//   Ropa({
//     required this.camisetas,
//     required this.pantalones,
//   });
// }

// class Camisetas {
//   String talla;
//   String color;
//   Camisetas({
//     required this.talla,
//     required this.color,
//   });
// }

// class Pantalones {
//   String talla;
//   String color;
//   Pantalones({
//     required this.talla,
//     required this.color,
//   });
// }
