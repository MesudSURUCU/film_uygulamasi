import 'package:film_uygulamasi/Filmler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  final Filmler film;

  const DetaySayfa({super.key, required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.film.film_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('resimler/${widget.film.film_resim_adi}'),
            Text('${widget.film.film_fiyat} \u{20BA}', style: TextStyle(fontSize: 48, color: Colors.blue),),
            SizedBox(
              width: 200, height: 50,
              child: ElevatedButton(
                  child: Text('KİRALA', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: (){
                    print('${widget.film.film_adi} KİRALANDI');
                }, ),
            )
          ],
        ),
      ),
    );
  }
}
