import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Theme.of(context).primaryColor,
      child: new ListView(
        padding: new EdgeInsets.all(20.0),
        children: <Widget>[
          new Text('About', style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),),
          new Text(
            'Otamatone creator Maywa Denki is an art unit formed in 1993 by two brothers, Masamichi and Nobumichi Tosa. Art unit is named after a company their father Maywa Denki Ltd in Ako city. Company produced accessories of screens for Toshiba and Matsushita Elektric. After while company grew into a medium-sized at peak. \n\nFactory doors were closed in 1979 due to the oil-shock. After 14 years was the name resurrected by Tosa’s sons Nobumichi and Masamichi. Since then they attempt to get their activities beyond the classical art, describing their works as “products,” and their live performances as “product demonstrations”. A typical Maywa Denki´s element is wearing blue work uniforms of Japanese electric stores. Naki series Naki series Maywa Denki have three product lines: \n\n“Naki” series – nonsense objects done in a fish motif, “Edelweiss” – arty objects done in a flower motif; and “Tsukuba” – their line of musical instruments. Their onstage musical instruments include one that resembles the mating of a xylophone and a helicopter, a robot rigged to play guitar, and various strange percussion instruments. Maywa Denki made their first album in 1997 for Sony. In 2001, Masamichi retired at the age of 35, and succeeded his brother as president of the company.',
            style: new TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
