import 'package:flutter/material.dart';
import 'menu_item.dart';

class MenuScreen extends StatelessWidget {
  final String category;

  MenuScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    List<MenuItem> filteredMenuItems =
        menuItems.where((menuItem) => menuItem.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu $category'),
        elevation: 4,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8.0),
        children: filteredMenuItems.map((menuItem) {
          return MenuItemCard(menuItem: menuItem);
        }).toList(),
      ),
    );
  }
}

final List<MenuItem> menuItems = [
  // KATEGORI MAKANAN
  MenuItem(
    name: 'Soto Lamongan',
    image: 'assets/Soto_Lamongan.png',
    recipe:
        '- Daging ayam – 500 gram\n- Bawang merah – 5 butir\n- Bawang putih – 3 siung\n- Lengkuas – 2 cm\n- Jahe – 2 cm\n- Serai, geprek – 2 batang\n- Daun salam – 2 lembar\n- Air – 1,5 liter\n- Pelengkap: Ketupat, tauge, daun bawang, sambal, kecap manis',
    instructions:
        '1. Rebus air, masukkan daging ayam hingga matang dan empuk.\n2. Tumis bumbu halus hingga harum, tambahkan daun salam dan serai.\n3. Masukkan bumbu tumis ke dalam kuah kaldu.\n4. Siapkan mangkuk, letakkan potongan ketupat dan tauge di atasnya, lalu siram dengan kuah soto.\n5. Hidangkan bersama daun bawang, sambal, dan kecap manis.',
    category: 'Makanan',
    duration: '1 jam 30 menit',
  ),
  MenuItem(
    name: 'Rawon',
    image: 'assets/Rawon.png',
    recipe:
        '- Daging sapi – 500 gram\n- Daun jeruk – 5 lembar\n- Serai, geprek – 2 batang\n- Daun salam – 2 lembar\n- Air – 1,2 liter\n- Bumbu halus: Kluwek, bawang putih, bawang merah, kemiri, ketumbar, jahe, kunyit, lada\n- Pelengkap: Bawang goreng, tauge kecil, jeruk nipis',
    instructions:
        '1. Potong daging sapi sesuai selera.\n2. Tumis bumbu halus hingga harum.\n3. Tambahkan serai, daun salam, dan daun jeruk. Masak hingga bumbu matang.\n4. Masukkan daging, tumis hingga berubah warna dan setengah matang.\n5. Tambahkan air, gula, dan garam. Masak hingga daging empuk.\n6. Rawon daging siap disajikan bersama dengan bumbu pelengkap.',
    category: 'Makanan',
    duration: '2 jam',
  ),
  MenuItem(
    name: 'Rujak Cingur',
    image: 'assets/Rujak_Cingur.png',
    recipe:
        '- Daging sapi cingur – 300 gram\n- Tauge – 100 gram\n- Kacang tanah, sangrai – 100 gram\n- Cingur, rebus – 150 gram\n- Lontong, potong-potong – 200 gram\n- Timun, iris tipis – 100 gram\n- Mangga muda, iris tipis – 100 gram\n- Bumbu: Cabai rawit merah, garam, gula, petis, air jeruk limo, bawang merah, bawang putih',
    instructions:
        '1. Rendam daging sapi cingur dalam air garam selama 15 menit, kemudian rebus hingga empuk.\n2. Haluskan bumbu lalu tumis hingga harum.\n3. Masukkan cingur rebus ke dalam tumisan bumbu, aduk rata.\n4. Siapkan piring, letakkan lontong, tauge, potongan timun, dan mangga muda.\n5. Tambahkan daging cingur di atasnya, siram dengan bumbu.\n6. Taburi dengan kacang tanah sangrai.',
    category: 'Makanan',
    duration: '1 jam 45 menit',
  ),
  MenuItem(
    name: 'Pecel Tumpang',
    image: 'assets/Pecel_Tumpang.png',
    recipe:
        '- Daun singkong\n- Kacang tanah\,- Kacang kedelai\,- Tauge\n- Kemangi\n- Timun\n- Bumbu kacang\n- Sambal\n- Lalapan',
    instructions:
        '1. Rebus daun singkong, kacang tanah, kacang kedelai hingga matang.\n2. Iris tipis timun dan kemangi.\n3. Siapkan bumbu kacang dan sambal.\n4. Sajikan daun singkong, kacang tanah, kacang kedelai, tauge, timun, dan kemangi dengan bumbu kacang dan sambal.\n5. Hidangkan bersama lalapan.',
    category: 'Makanan',
    duration: '30 menit',
  ),
  MenuItem(
    name: 'Pecel Madiun',
    image: 'assets/Pecel_Madiun.png',
    recipe:
        '- Kacang tanah\n- Kacang kedelai\n- Tauge\n- Kangkung\n- Timun\n- Sambal pecel\n- Kerupuk\n- Gula merah\n- Air asam\n- Garam\n- Asam jawa\n- Bawang putih',
    instructions:
        '1. Rebus kacang tanah, kacang kedelai, tauge, dan kangkung hingga matang.\n2. Iris tipis timun.\n3. Siapkan sambal pecel.\n4. Sajikan kacang tanah, kacang kedelai, tauge, kangkung, dan timun dengan sambal pecel, kerupuk, gula merah yang sudah dilarutkan, air asam, garam, dan asam jawa.\n5. Hidangkan selagi hangat.',
    category: 'Makanan',
    duration: '45 menit',
  ),
  MenuItem(
    name: 'Lontong Balap',
    image: 'assets/Lontong_Balap.png',
    recipe:
        '- Lontong\n- Tauge\n- Kerupuk\n- Mie kuning\n- Kecambah\n- Bawang goreng\n- Petis\n- Bawang putih\n- Cabai rawit\n- Gula merah\n- Garam\n- Air asam\n- Daun seledri\n- Tomat',
    instructions:
        '1. Rebus lontong, tauge, dan mie kuning hingga matang.\n2. Goreng kerupuk hingga kering.\n3. Iris tipis daun seledri dan tomat.\n4. Siapkan bumbu petis.\n5. Sajikan lontong, tauge, mie kuning, dan kecambah dalam mangkuk.\n6. Tambahkan bawang goreng, bumbu petis, daun seledri, tomat, dan kerupuk di atasnya.\n7. Hidangkan selagi hangat.',
    category: 'Makanan',
    duration: '50 menit',
  ),
  MenuItem(
    name: 'Rujak Soto Banyuwangi',
    image: 'assets/Rujak_Soto_Banyuwangi.png',
    recipe:
        '- Tauge\n- Kentang\n- Tempe\n- Telur rebus\n- Kol\n- Kangkung\n- Timun\n- Soun\n- Daun salam\n- Gula merah\n- Air asam\n- Cabai rawit\n- Kencur\n- Bawang merah\n- Bawang putih',
    instructions:
        '1. Rebus tauge, kentang, tempe, telur rebus, kol, dan kangkung hingga matang.\n2. Potong-potong timun.\n3. Rendam soun dalam air panas hingga lembut.\n4. Siapkan bumbu rujak dan soto.\n5. Sajikan tauge, kentang, tempe, telur rebus, kol, kangkung, dan timun dalam mangkuk.\n6. Tambahkan soun di atasnya.\n7. Tambahkan bumbu rujak dan soto.\n8. Hidangkan selagi hangat.',
    category: 'Makanan',
    duration: '1 jam',
  ),

  // KATEGORI MINUMAN
  MenuItem(
    name: 'Dawet Jabung',
    image: 'assets/Dawet_Jabung.png',
    recipe:
        '- Tepung beras\n- Tepung hunkwe\n- Gula merah\n- Daun pandan\n- Air\n- Santan',
    instructions:
        '1. Campurkan tepung beras dan tepung hunkwe dengan air, aduk hingga rata.\n2. Rebus campuran tepung bersama gula merah dan daun pandan hingga mendidih.\n3. Tambahkan santan, aduk rata, dan masak hingga matang.\n4. Sajikan dingin bersama es serut.',
    category: 'Minuman',
    duration: '1 jam',
  ),
  MenuItem(
    name: 'Es Gudir',
    image: 'assets/Es_Gudir.png',
    recipe: '- Gula aren\n- Santan\n- Es serut\n- Air',
    instructions:
        '1. Larutkan gula aren dalam air panas hingga terlarut.\n2. Dinginkan larutan gula aren.\n3. Tuangkan santan ke dalam gelas.\n4. Tambahkan es serut.\n5. Tuangkan larutan gula aren di atasnya.\n6. Sajikan dingin.',
    category: 'Minuman',
    duration: '30 menit',
  ),
  MenuItem(
    name: 'Es Buto Ijo',
    image: 'assets/Es_Buto_Ijo.png',
    recipe: '- Tape singkong\n- Gula merah\n- Es serut\n- Santan',
    instructions:
        '1. Haluskan tape singkong bersama gula merah.\n2. Campurkan tape singkong dan gula merah dengan santan.\n3. Sajikan dalam mangkuk dengan es serut di atasnya.\n4. Sajikan segera.',
    category: 'Minuman',
    duration: '45 menit',
  ),
  MenuItem(
    name: 'Es Pleret',
    image: 'assets/Es_Pleret.png',
    recipe:
        '- Gula merah\n- Daun pandan\n- Santan\n- Tepung hunkwe\n- Es serut',
    instructions:
        '1. Rebus gula merah dan daun pandan hingga larut.\n2. Saring larutan gula merah.\n3. Campurkan larutan gula merah dengan santan.\n4. Masak tepung hunkwe hingga mengental.\n5. Sajikan es serut dalam mangkuk, tuangkan larutan santan, dan tambahkan tepung hunkwe di atasnya.\n6. Sajikan dingin.',
    category: 'Minuman',
    duration: '1 jam',
  ),
  MenuItem(
    name: 'Es Sinom',
    image: 'assets/Es_Sinom.png',
    recipe:
        '- Asam Jawa\n- Gula aren\n- Serai\n- Daun jeruk\n- Air\n- Es serut',
    instructions:
        '1. Rebus asam jawa, gula aren, serai, dan daun jeruk hingga mendidih.\n2. Saring larutan asam jawa.\n3. Dinginkan larutan asam jawa.\n4. Sajikan dalam gelas dengan es serut.\n5. Sajikan dingin.',
    category: 'Minuman',
    duration: '1 jam',
  ),

  // KATEGORI CAMILAN
  MenuItem(
    name: 'WINGKO BABAT LAMONGAN',
    image: 'assets/Wingko_Babat_Lamongan.png',
    recipe:
        '- Tepung ketan – 1 kg\n- Gula merah – 500 gram, iris tipis\n- Air – 400 ml\n- Kelapa parut – 1 butir, sangrai\n- Daun pisang – secukupnya, untuk membungkus\n- Garam – 1/2 sendok teh\n- Vanili – 1/2 sendok teh',
    instructions:
        '1. Campurkan gula merah, air, garam, dan vanili. Rebus hingga gula larut dan mendidih.\n2. Masukkan kelapa sangrai, aduk rata. Sisihkan.\n3. Panaskan cetakan lalu masukkan tepung ketan.\n4. Tambahkan campuran kelapa, tutup dengan tepung ketan lagi.\n5. Kukus hingga matang.\n6. Wingko Babat Lamongan siap disajikan.',
    category: 'Camilan',
    duration: '1 jam 30 menit',
  ),
  MenuItem(
    name: 'KUE GETI TULUNGAGUNG',
    image: 'assets/Kue_Geti_Tulungagung.png',
    recipe:
        '- Tepung beras – 250 gram\n- Gula pasir – 250 gram\n- Santan – 750 ml\n- Daun pandan – 3 lembar, simpulkan\n- Daun pisang – secukupnya, untuk membungkus\n- Garam – secukupnya',
    instructions:
        '1. Campurkan tepung beras, gula pasir, dan santan. Aduk rata.\n2. Masak adonan sambil diaduk hingga meletup-letup.\n3. Masukkan daun pandan, garam, aduk hingga matang.\n4. Ambil secukupnya adonan, lalu bungkus dengan daun pisang.\n5. Kukus kue hingga matang.\n6. Kue Geti Tulungagung siap disajikan.',
    category: 'Camilan',
    duration: '1 jam 15 menit',
  ),
  MenuItem(
    name: 'BREM MADIUN',
    image: 'assets/Brem_Madiun.png',
    recipe:
        '- Beras ketan – 1 kg\n- Air – 2,5 liter\n- Ragi tape – secukupnya\n- Daun pisang – secukupnya, untuk membungkus',
    instructions:
        '1. Cuci beras ketan hingga bersih, lalu rendam dalam air selama 1 malam.\n2. Kukus beras ketan hingga matang.\n3. Dinginkan ketan hingga suhu ruang.\n4. Tambahkan ragi tape ke ketan, aduk rata.\n5. Bungkus ketan dengan daun pisang, biarkan fermentasi selama 2-3 hari.\n6. Brem Madiun siap disajikan.',
    category: 'Camilan',
    duration: '3 hari',
  ),
  MenuItem(
    name: 'ONDE-ONDE MOJOKERTO',
    image: 'assets/Onde-Onde_Mojokerto.png',
    recipe:
        '- Tepung ketan – 250 gram\n- Gula merah – 250 gram, sisir\n- Kelapa parut – 1 butir, kukus\n- Minyak goreng – secukupnya, untuk menggoreng\n- Air – secukupnya',
    instructions:
        '1. Campur tepung ketan dengan air, uleni hingga kalis.\n2. Bulatkan adonan, lalu isi dengan gula merah.\n3. Rebus onde-onde hingga mengapung.\n4. Tiriskan, lalu gulingkan pada kelapa parut.\n5. Onde-onde Mojokerto siap disajikan.',
    category: 'Camilan',
    duration: '1 jam 20 menit',
  ),
  MenuItem(
    name: 'PUDAK GRESIK',
    image: 'assets/Pudak_Gresik.png',
    recipe:
        '- Tepung ketan – 500 gram\n- Gula merah – 200 gram\n- Santan – 500 ml\n- Air – 500 ml\n- Daun pandan – 3 lembar, simpulkan\n- Garam – 1/2 sendok teh\n- Kelapa parut – 1 butir, kukus',
    instructions:
        '1. Campur tepung ketan, air, santan, dan daun pandan. Aduk rata.\n2. Masak adonan hingga mengental sambil diaduk.\n3. Tambahkan garam, aduk rata.\n4. Ambil adonan, bentuk bulat dan isi dengan gula merah.\n5. Kukus pudak hingga matang.\n6. Gulingkan pudak pada kelapa parut.\n7. Pudak Gresik siap disajikan.',
    category: 'Camilan',
    duration: '2 jam',
  ),
  MenuItem(
    name: 'PUTU LANANG MALANG',
    image: 'assets/Putu_Lanang_Malang.png',
    recipe:
        '- Tepung beras – 500 gram\n- Gula pasir – 250 gram\n- Kelapa parut – 1 butir, kukus\n- Garam – secukupnya\n- Air – secukupnya',
    instructions:
        '1. Campur tepung beras, gula pasir, dan air. Aduk rata.\n2. Panaskan cetakan putu, tuang adonan hingga setengah cetakan.\n3. Tambahkan kelapa parut di tengah adonan, lalu tutup dengan adonan lagi.\n4. Kukus putu hingga matang.\n5. Putu Lanang Malang siap disajikan.',
    category: 'Camilan',
    duration: '1 jam',
  ),
  MenuItem(
    name: 'GETHUK PISANG KEDIRI',
    image: 'assets/Gethuk_Pisang_Kediri.png',
    recipe:
        '- Pisang kepok – 1 kg\n- Gula merah – 250 gram\n- Garam – 1/2 sendok teh\n- Air – secukupnya\n- Kelapa parut – 1 butir, kukus',
    instructions:
        '1. Kukus pisang hingga matang, lalu haluskan.\n2. Masak gula merah dengan air hingga larut.\n3. Tambahkan pisang yang telah dihaluskan, aduk hingga rata.\n4. Tambahkan garam, aduk rata.\n5. Bentuk adonan menjadi bulat-bulat kecil.\n6. Gethuk Pisang Kediri siap disajikan.',
    category: 'Camilan',
    duration: '1 jam 15 menit',
  ),
  MenuItem(
    name: 'MATA BAGONG JAWA TIMUR',
    image: 'assets/Mata_Bagong_Jawa_Timur.png',
    recipe:
        '- Ketan putih – 500 gram\n- Gula merah – 200 gram\n- Air – 300 ml\n- Garam – secukupnya\n- Minyak goreng – secukupnya, untuk menggoreng',
    instructions:
        '1. Cuci ketan hingga bersih, rendam selama 2 jam, lalu kukus hingga matang.\n2. Campur gula merah dengan air, rebus hingga gula larut.\n3. Masukkan ketan ke dalam larutan gula, aduk hingga rata.\n4. Ambil sedikit adonan, pipihkan, lalu goreng hingga kuning kecokelatan.\n5. Mata Bagong Jawa Timur siap disajikan.',
    category: 'Camilan',
    duration: '2 jam 30 menit',
  ),
  MenuItem(
    name: 'OPAK GAMBIR BLITAR',
    image: 'assets/Opak_Gambir_Blitar.png',
    recipe:
        '- Singkong – 1 kg\n- Daun pisang – secukupnya, untuk membungkus\n- Garam – secukupnya\n- Minyak goreng – secukupnya, untuk menggoreng',
    instructions:
        '1. Kupas singkong, cuci hingga bersih.\n2. Rebus singkong hingga lunak.\n3. Haluskan singkong, tambahkan garam, uleni hingga kalis.\n4. Ambil sedikit adonan, pipihkan, lalu bungkus dengan daun pisang.\n5. Goreng opak hingga matang dan kecokelatan.\n6. Opak Gambir Blitar siap disajikan.',
    category: 'Camilan',
    duration: '2 jam 45 menit',
  ),
  // Tambahkan MenuItem lainnya
];
