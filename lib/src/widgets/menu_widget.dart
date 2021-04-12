import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(250, 31, 38, 1.0);
    TextStyle _style = TextStyle(
      color: Colors.red[400],
      fontSize: 14.0,
    );
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'Nombre Apellido ',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
                textAlign: TextAlign.left,
              ),
              accountEmail: Text(
                'Example@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
                textAlign: TextAlign.center,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.article, color: _color),
            title: Text(
              'Noticias',
              style: _style,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard, color: _color),
            title: Text(
              'Talleres',
              style: _style,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'taller');
            },
          ),
          ListTile(
            leading: Icon(Icons.drive_file_rename_outline, color: _color),
            title: Text(
              'Convocatorias',
              style: _style,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'convocatoria');
            },
          ),
          ListTile(
            leading: Icon(Icons.live_tv, color: _color),
            title: Text(
              'Webinar',
              style: _style,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'webinar');
            },
          ),
          ListTile(
            leading: Icon(Icons.forum, color: _color),
            title: Text(
              'Foros',
              style: _style,
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'foro');
            },
          ),
          ListTile(
            leading: Icon(Icons.school, color: _color),
            title: Text(
              'Oferta educativa superior',
              style: _style,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
