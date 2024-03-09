import 'package:flutter/material.dart';
import 'package:worldtim_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class loading extends StatefulWidget {
  //const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {


  void setupWorldTime() async{

    WorldTime instance = WorldTime(location: 'Nairobi', flag: 'Nairobi.png', url: 'Africa/Nairobi');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }


  /*  //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Drene';
    });
    //simulate network request for Bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'I am a god';
    });

    print('$username - $bio');*/



  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
