import 'package:flutter/material.dart';

class GmailPage extends StatefulWidget {
  const GmailPage({super.key});

  @override
  State<GmailPage> createState() => _GmailPageState();
}
TextEditingController txtGmail = TextEditingController();
class _GmailPageState extends State<GmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 150,top: 30),
                child: DrawerHeader(child: Text('Gmail',style: TextStyle(color: Colors.grey,fontSize: 40,),)),
              ),
              list_Tile(icon: Icons.all_inbox_outlined, txt: 'All Inboxes'),
              list_Tile(icon: Icons.inbox, txt: 'Inbox'),
              list_Tile(icon: Icons.star_border_outlined ,txt: 'Starred'),
              list_Tile(icon: Icons.access_time_outlined ,txt: 'Snoozed'),
              list_Tile(icon: Icons.label_important_outline_sharp ,txt: 'Important'),
              list_Tile(icon: Icons.send,txt: 'Sent'),
              list_Tile(icon: Icons. description_outlined,txt: 'Drafts'),
              list_Tile(icon: Icons.mail_outline_rounded ,txt: 'All Mail'),
              list_Tile(icon: Icons. report_gmailerrorred_outlined,txt: 'Spam'),
              list_Tile(icon: Icons. delete_sweep_outlined,txt: 'Trash'),
              list_Tile(icon: Icons.add ,txt: 'Create new'),
              list_Tile(icon: Icons.settings_sharp ,txt: 'Setting'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gmail'),
      ),
    );
  }

  ListTile list_Tile({required icon,required String txt}) => ListTile(leading: Icon(icon,color: Colors.white,),title: Text('$txt',style: TextStyle(color: Colors.white),),);
}