part of 'uis.dart';

class Siswa extends StatefulWidget {
  @override
  _SiswaState createState() => _SiswaState();
}

class _SiswaState extends State<Siswa> {
  List dataSiswaOk;

  void dataSiswa() {
    getAllSiswa().then((value) {
      setState(() {
        dataSiswaOk = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataSiswa();
  }

  void hapusSiswa(String id) async {
    var hapus = await deleteSiswa(id);

    Toast.show("Success $hapus", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
    print('test');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: dataSiswaOk == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.blue[200],
                Colors.blue
                // Colors.blueAccent
              ])),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: dataSiswaOk.length,
                        itemBuilder: (context, i) {
                          return Card(
                            elevation: 8,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              title: Text(
                                dataSiswaOk[i].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.details,
                                    color: Colors.green,
                                  ),
                                  Text("Lebih Detail")
                                ],
                              ),
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //   return DataSingleSiswa(
                                //       id: dataSiswaOk[i].id.toString());
                                // }));
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.all(20),
                      child: FloatingActionButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return CreateSiswa();
                          // }));
                        },
                        tooltip: 'INCREMENT',
                        child: Icon(Icons.add),
                      ),
                    )
                  ]),
            ),
    );
  }
}
