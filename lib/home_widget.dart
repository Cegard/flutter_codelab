import 'package:flutter/material.dart';
import './mount_model.dart';

final List<MountModel> mountItems = [
  MountModel(
    path:
    'https://sa.kapamilya.com/absnews/abscbnnews/media/2021/afp/01/17/20210116-mt-semeru-indonesia-ash-afp-s.jpg',
    name: 'Mount Semeru',
    description: 'Semeru, or Mount Semeru, is an active volcano in East Java,'
        ' Indonesia. It is located in the subduction zone, where the'
        ' Indo-Australia plate subducts under the Eurasia plate. It is the'
        ' highest mountain on the island of Java.',
    location: 'East Java'
  ),
  MountModel(
    path:
    'https://media-cdn.tripadvisor.com/media/photo-s/04/a5/6f/ce/dsc-5622jpg.jpg',
    name: 'Mount Merbaru',
    description: 'Mount Merbabu is a dormant stratovolcano in Central Java'
      ' province on the Indonesian island of Java. The name Merbabu could be'
      ' loosely translated as Mountain of Ash from the Javanese combined'
      ' words; Meru means mountain and awu or abu means ash.',
    location: 'Central Java'
  ),
  /*MountModel(
    path: 'https://cdn.dlmag.com/wp-content/uploads/2019/07/maunaloa1.jpg',
    name: 'Mauna Loa',
    description: 'Mauna Loa is one of five volcanoes that form the Island of'
      ' Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest'
      ' subaerial volcano in both mass and volume, Mauna Loa has historically'
      ' been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
    location: 'Hawaii'
  ),*/
  MountModel(
    path:
    'https://cdn.images.express.co.uk/img/dynamic/78/590x/mount-vesuvius-1100807.jpg',
    name: 'Mount Vesuvius',
    description: 'Mount Vesuvius is a somma-stratovolcano located on the Gulf'
      ' of Naples in Campania, Italy, about 9 km east of Naples and a short'
      ' distance from the shore. It is one of several volcanoes which form'
      ' the Campanian volcanic arc.',
    location: 'Italy'
  ),
  MountModel(
    path:
    'https://upload.wikimedia.org/wikipedia/commons/0/04/PopoAmeca2zoom.jpg',
    name: 'Mount Popocatépetl',
    description: 'Popocatépetl is an active stratovolcano located in the'
      ' states of Puebla, Morelos, and Mexico in central Mexico. It lies in'
      ' the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is'
      ' the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
    location: 'Mexico'
  )
];


class HomePage extends StatelessWidget {

  final Color mainColor;

  const HomePage(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: mainColor),
        title: Center(
          child: Icon(Icons.terrain, color: mainColor, size: 40),
        ),
        actions: const [
          SizedBox(
            width: 40,
            height: 40,
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(mainColor),
          SearchWidget(mainColor),
          const Expanded(
            child: ListViewWidget(),
          )
        ],
      ),
    );
  }
}


class HeaderWidget extends StatelessWidget {

  final Color mainColor;

  const HeaderWidget(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/4041082?s=400&u=45a9f1b31712bd81d113126a178713cc7ba7d917&v=4',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, you',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )
              ),
              Text(
                'Good morning!',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 12,
                )
              )
            ]
          )
        ],
      ),
    );
  }
}


class SearchWidget extends StatelessWidget {

  final Color mainColor;

  const SearchWidget(this.mainColor, {Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover',
            style: TextStyle( fontSize: 25, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              )
            ]
          ),
        ],
      ),
    );
  }
}


class ListViewWidget extends StatelessWidget{

  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];

          return Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(currentMount.path),
                fit: BoxFit.cover
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentMount.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  currentMount.location,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
