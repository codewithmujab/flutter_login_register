import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_register/bloc/counter_bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_login_register/counter_cubit.dart';
//import 'package:flutter_login_register/counter_page.dart';
import 'package:flutter_login_register/myhome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //CounterCubit disediakan untuk CounterPage menggunakan BlocProvider.
  //Ini menyiapkan lingkungan untuk aplikasi penghitung kita.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
        // home: BlocProvider(
        //   create: (_) => CounterCubit(),
        //   child: const CounterPage(),
        // ),
      ),
    );
  }
}

//Cara Kerja Pola BLoC:
//Dimulai dengan interaksi pengguna, seperti penekanan tombol.
//Interaksi ini mengirimkan acara ke BLoC.
//BLoC memproses peristiwa tersebut dan menghasilkan keadaan baru.
//UI mendengarkan BLoC dan memperbaruinya ketika status baru dikeluarkan.

//Pola ini memastikan bahwa semua logika bisnis dipisahkan dari kode UI
//BlocBuilder dan BlocProvider, untuk menghubungkan UI dengan logika BLoC
//Misalnya, BlocBuilder adalah widget yang dibuat sendiri berdasarkan status BLoC terbaru. 
//Ia mendengarkan aliran status BLoC dan merender ulang setiap kali status berubah.

//BlocProvider
//BlocBuilder
//Gunakan BlocBuilder saat Anda memerlukan UI untuk bereaksi terhadap perubahan status. 
//Untuk efek samping (seperti menampilkan dialog atau navigasi), gunakan BlocListener.

//BlocListener
//Terkadang, satu BLoC perlu bereaksi terhadap perubahan status di BLoC lain. 
//Hal ini dapat dicapai melalui komunikasi Blok-ke-Blok menggunakan BlocListener.
//Anda dapat mendengarkan status BLoC dan menambahkan peristiwa ke BLoC lain berdasarkan status ini.

//BlocConsumer

//MultiBlocProvider
//Dalam aplikasi besar, Anda mungkin perlu mengelola beberapa BLoC. 
//Flutter menyediakan MultiBlocProvider untuk memasukkan beberapa instance BLoC sekaligus.
//Hal ini sangat berguna ketika berbagai bagian aplikasi Anda memerlukan akses ke BLoC yang berbeda.