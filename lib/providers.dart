import 'package:ajitstafd/bloc/videos_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


List<BlocProvider> bproviders = [
 
  BlocProvider<VideosCubit>(
    create: (BuildContext context) => VideosCubit(),
  ),

 
];
