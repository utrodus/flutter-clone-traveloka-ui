import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Traveloka",
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    NetworkImage("https://source.unsplash.com/ZHvM3XIOHoE/")),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Fiaz Lutfhi",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text("305 Point"),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            RaisedButton(
              child: Text("Traveloka Pay"),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Menu Utama - GRID VIEW
class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

// Isi List Widget MenuUtama
List<MenuUtamaIcon> menuUtamaItem = [
  MenuUtamaIcon(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.lightBlue,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Aktivitas & Rekreasi',
    icon: Icons.confirmation_number,
    colorBox: Colors.lightGreenAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Kuliner',
    icon: Icons.local_dining,
    colorBox: Colors.deepOrangeAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Tiket Kerta Api',
    icon: Icons.train,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Tiket Bus',
    icon: Icons.directions_bus,
    colorBox: Colors.lightGreen,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Transportasi Bandara',
    icon: Icons.local_taxi,
    colorBox: Colors.greenAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaIcon(
    title: 'Semua Produk',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.white,
  ),
];

// Reusable Widget MenuUtamaIcon Untuk mendefinisikan setiap Item dari Menu utama
class MenuUtamaIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;

  MenuUtamaIcon({this.title, this.icon, this.colorBox, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 2.0),
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class MenuTambahan extends StatelessWidget {
  const MenuTambahan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(
    title: "Tagihan & Isi Ulang",
    icon: Icons.receipt,
  ),
  MenuTambahanItem(
    title: "Bioskop",
    icon: Icons.movie,
  ),
  MenuTambahanItem(
    title: "PayLater",
    icon: Icons.credit_card,
  ),
  MenuTambahanItem(
    title: "Status Penerbangan",
    icon: Icons.airplanemode_active,
  ),
  MenuTambahanItem(
    title: "Pulsa & Paket Internet",
    icon: Icons.sim_card,
  ),
  MenuTambahanItem(
    title: "Online Check-In",
    icon: Icons.notifications_active,
  ),
];

class MenuTambahanItem extends StatelessWidget {
  final String title;
  final IconData icon;
  MenuTambahanItem({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){},
          child: Container(
        width: 100.0,
        child: Container(
          child: Column(
            children: <Widget>[
              Icon(icon),
              Text(
                title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Promo extends StatelessWidget {
  const Promo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Promo Saat Ini",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 5),
          width: double.infinity,
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue[800],
                        ]),
                    borderRadius: BorderRadius.circular(8.0)),
                height: 150.0,
                width: 150.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(20.0, 20.0),
                            bottomRight: Radius.elliptical(150.0, 150.0),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                        child: Text(
                          "%",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Lihat Semua \nPromo",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                 margin: EdgeInsets.only(left: 10.0),
                height: 150,
                width: 300,
                child: null,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("images/promo.jpeg"),
                  ),
                ),
              ),

             
            ],
          ),
        ),
        
      ],
    );
  }
}
