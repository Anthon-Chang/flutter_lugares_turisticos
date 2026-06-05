import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          
          child: Column(
            children: [
              ImageSection(image: 'https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?w=600'),
              TitleSection(name: 'Islas Galápagos', location: 'Provincia de Galápagos'),
              ButtonSection(),
              TextSection(description: 'Archipiélago volcánico declarado Patrimonio Natural de la Humanidad por la UNESCO. Hogar de fauna única como la iguana marina y la tortuga gigante.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600'),
              TitleSection(name: 'Laguna Quilotoa', location: 'Cotopaxi'),
              ButtonSection(),
              TextSection(description: 'Laguna de aguas turquesas en el cráter de un volcán extinto a 3.914 m.s.n.m. Sus alrededores ofrecen impresionantes vistas andinas y comunidades indígenas.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1583073490680-2c32c5571736?w=600'),
              TitleSection(name: 'Centro Histórico de Quito', location: 'Quito, Pichincha'),
              ButtonSection(),
              TextSection(description: 'Primer sitio declarado Patrimonio Cultural de la Humanidad por la UNESCO en 1978. Sus calles empedradas e iglesias barrocas reflejan más de 500 años de historia.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?w=600'),
              TitleSection(name: 'Nariz del Diablo', location: 'Alausí, Chimborazo'),
              ButtonSection(),
              TextSection(description: 'Una de las hazañas de ingeniería ferroviaria más increíbles del mundo. El tren desciende en zigzag por una pendiente casi vertical entre paisajes andinos.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1531761535209-180857e963b9?w=600'),
              TitleSection(name: 'Volcán Cotopaxi', location: 'Parque Nacional Cotopaxi'),
              ButtonSection(),
              TextSection(description: 'Uno de los volcanes activos más altos del mundo con 5.897 m. Sus páramos, lagunas y glaciares lo convierten en destino clásico para el montañismo.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1526392060635-9d6019884377?w=600'),
              TitleSection(name: 'Ingapirca', location: 'Cañar'),
              ButtonSection(),
              TextSection(description: 'El complejo arqueológico inca más grande de Ecuador. El Templo del Sol es la estructura mejor conservada y un testimonio del poder del Imperio Inca en la región.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=600'),
              TitleSection(name: 'Bosque Nublado de Mindo', location: 'Pichincha'),
              ButtonSection(),
              TextSection(description: 'Uno de los mejores destinos de avistamiento de aves del mundo con más de 500 especies registradas. Sus bosques esconden orquídeas, mariposas y cascadas.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?w=600'),
              TitleSection(name: 'Mitad del Mundo', location: 'San Antonio, Pichincha'),
              ButtonSection(),
              TextSection(description: 'El lugar donde el planeta se divide en dos hemisferios. Puedes pararte sobre la línea equinoccial y vivir fenómenos físicos únicos imposibles en otro lugar.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1504701954957-2010ec3bcec1?w=600'),
              TitleSection(name: 'Parque Nacional Yasuní', location: 'Orellana'),
              ButtonSection(),
              TextSection(description: 'Uno de los lugares con mayor biodiversidad del planeta. En su selva amazónica conviven jaguares, anacondas y cientos de especies junto a comunidades ancestrales.'),

              ImageSection(image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600'),
              TitleSection(name: 'Montañita', location: 'Santa Elena'),
              ButtonSection(),
              TextSection(description: 'El destino playero más vibrante de Ecuador, famoso por sus olas perfectas para el surf, su ambiente bohemio y su animada vida nocturna junto al Pacífico.'),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }

}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            _isFavorited ? Icons.home : Icons.home_outlined,
            color: _isFavorited ? Colors.red[500] : Colors.grey,
          ),
          onPressed: _toggleFavorite,
        ),
        SizedBox(
          width: 28,
          child: Text('$_favoriteCount'),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}