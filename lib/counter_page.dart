import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_register/counter_cubit.dart';

//Widget CounterPage
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

//UI dibangun di CounterPage, sebuah StatelessWidget.
//Ia menggunakan BlocBuilder untuk bereaksi terhadap perubahan status dari CounterCubit.
//UI mencakup tampilan penghitung dan dua tombol untuk menambah dan mengurangi hitungan.
// Widget CounterPage tidak mengetahui apa pun tentang apa yang terjadi
//saat pengguna mengetuk tombol. Ini hanya memberi tahu CounterCubit
//bahwa pengguna telah menekan tombol kenaikan atau penurunan.
//Pemisahan ini memastikan arsitektur yang bersih,
//di mana UI bertanggung jawab penuh untuk menyajikan masukan pengguna, dan Cubit menangani logika bisnis
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Text(
            '$count',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
