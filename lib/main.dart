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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ImageSection(image: 'https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?w=600'),
              const TitleSection(name: 'Islas Galápagos', location: 'Provincia de Galápagos'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Islas+Galapagos+Ecuador'),
              const TextSection(description: 'Archipiélago volcánico declarado Patrimonio Natural de la Humanidad por la UNESCO. Hogar de fauna única como la iguana marina y la tortuga gigante.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1596402184320-417e7178b2cd?w=600'),
              const TitleSection(name: 'Laguna Quilotoa', location: 'Cotopaxi'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Laguna+Quilotoa+Ecuador'),
              const TextSection(description: 'Laguna de aguas turquesas en el cráter de un volcán extinto a 3.914 m.s.n.m. Sus alrededores ofrecen impresionantes vistas andinas y comunidades indígenas.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1583073490680-2c32c5571736?w=600'),
              const TitleSection(name: 'Centro Histórico de Quito', location: 'Quito, Pichincha'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Centro+Historico+Quito+Ecuador'),
              const TextSection(description: 'Primer sitio declarado Patrimonio Cultural de la Humanidad por la UNESCO en 1978. Sus calles empedradas e iglesias barrocas reflejan más de 500 años de historia.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?w=600'),
              const TitleSection(name: 'Nariz del Diablo', location: 'Alausí, Chimborazo'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Nariz+del+Diablo+Alausi+Ecuador'),
              const TextSection(description: 'Una de las hazañas de ingeniería ferroviaria más increíbles del mundo. El tren desciende en zigzag por una pendiente casi vertical entre paisajes andinos.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1531761535209-180857e963b9?w=600'),
              const TitleSection(name: 'Volcán Cotopaxi', location: 'Parque Nacional Cotopaxi'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Volcan+Cotopaxi+Ecuador'),
              const TextSection(description: 'Uno de los volcanes activos más altos del mundo con 5.897 m. Sus páramos, lagunas y glaciares lo convierten en destino clásico para el montañismo.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1526392060635-9d6019884377?w=600'),
              const TitleSection(name: 'Ingapirca', location: 'Cañar'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Ingapirca+Canar+Ecuador'),
              const TextSection(description: 'El complejo arqueológico inca más grande de Ecuador. El Templo del Sol es la estructura mejor conservada y un testimonio del poder del Imperio Inca en la región.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=600'),
              const TitleSection(name: 'Bosque Nublado de Mindo', location: 'Pichincha'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Mindo+Pichincha+Ecuador'),
              const TextSection(description: 'Uno de los mejores destinos de avistamiento de aves del mundo con más de 500 especies registradas. Sus bosques esconden orquídeas, mariposas y cascadas.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?w=600'),
              const TitleSection(name: 'Mitad del Mundo', location: 'San Antonio, Pichincha'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Mitad+del+Mundo+Ecuador'),
              const TextSection(description: 'El lugar donde el planeta se divide en dos hemisferios. Puedes pararte sobre la línea equinoccial y vivir fenómenos físicos únicos imposibles en otro lugar.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1504701954957-2010ec3bcec1?w=600'),
              const TitleSection(name: 'Parque Nacional Yasuní', location: 'Orellana'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Parque+Nacional+Yasuni+Ecuador'),
              const TextSection(description: 'Uno de los lugares con mayor biodiversidad del planeta. En su selva amazónica conviven jaguares, anacondas y cientos de especies junto a comunidades ancestrales.'),

              const ImageSection(image: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600'),
              const TitleSection(name: 'Montañita', location: 'Santa Elena'),
              ButtonSection(mapUrl: 'https://maps.google.com/?q=Montanita+Santa+Elena+Ecuador'),
              const TextSection(description: 'El destino playero más vibrante de Ecuador, famoso por sus olas perfectas para el surf, su ambiente bohemio y su animada vida nocturna junto al Pacífico.'),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.mapUrl});

  final String mapUrl;

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ButtonWithText(color: Colors.blue, icon: Icons.call, label: 'CALL'),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
            onTap: () async {
              final uri = Uri.parse(mapUrl);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              }
            },
          ),
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
    this.onTap,
  });

  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
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