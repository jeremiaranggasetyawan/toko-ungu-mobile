# Toko Ungu Mobile

**Dibuat Oleh : Jeremia Rangga Setyawan / 2306245775 / Kelas B**

**Link Repository : https://github.com/jeremiaranggasetyawan/toko-ungu-mobile***

## Tugas 7

### 1) Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Dalam flutter terdapat dua jenis widget yaitu Stateless Widget dan Stateful Widget. Masing-masing widget tersebut memiliki karakteristik dan fungsi yang berbeda berdasarkan kondisi state yang berubah atau tidak. Berikut penjelasannya :

#### 1. **StatelessWidget**

- **StatelessWidget** adalah widget yang tidak memiliki keadaan internal yang dapat berubah. Artinya, setelah widget ini dirender, widget tersebut akan tetap sama kecuali dirender ulang secara manual oleh aplikasi.

- **StatelessWidget** cocok untuk elemen UI yang statis, seperti teks, ikon, atau tombol yang hanya menampilkan data dan tidak mengalami perubahan status (state).

Contoh :

```dart
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Ini adalah stateless widget yang hanya menampilkan teks.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
```

#### 2. **StatefulWidget**

**StatefulWidget** adalah widget yang memiliki keadaan internal (state) yang dapat berubah. **StatefulWidget** terdiri dari dua bagian:

- **StatefulWidget class**: Bagian yang mewakili struktur dari widget itu sendiri.

- **State class**: Bagian yang menangani dan menyimpan state dari widget, yang memungkinkan tampilan widget diperbarui ketika ada perubahan.

Widget ini cocok untuk elemen UI yang dapat berubah-ubah, seperti form input, slider, atau tombol yang merespons aksi pengguna dan memerlukan pembaruan tampilan setiap kali state berubah.

Contoh :

```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter: $counter',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
```

Pada contoh di atas, **StatefulWidget** digunakan karena nilai `counter` berubah setiap kali tombol ditekan. Fungsi `setState` memberitahu Flutter untuk merender ulang UI dan memperbarui tampilan nilai `counter`.

### 2) Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Dalam proyek ini, saya menggunakan beberapa widget utk membangun tampilan aplikasi saya. Beberapa ada yang secara default disediakan oleh flutter ada juga yang saya buat sendiri.

_Berikut adalah widget default yang digunakan :_

#### 1. **MaterialApp**

- **Fungsi**: `MaterialApp` adalah widget utama yang menyatukan seluruh aplikasi Flutter. Ini memberikan struktur dasar aplikasi dan mengatur tema, title, serta halaman awal.

- **Penjelasan**: Mengatur tema aplikasi (`theme`) dengan warna utama dan sekunder, serta mengatur halaman awal aplikasi (`home`), yaitu `MyHomePage`.

#### 2. **Scaffold**

- **Fungsi**: `Scaffold` adalah widget yang menyediakan struktur dasar halaman aplikasi, termasuk `AppBar` (judul aplikasi di bagian atas), `body` (isi utama halaman), dan fitur tambahan lainnya seperti `drawer` atau `floatingActionButton`.

- **Penjelasan**: Digunakan dalam `MyHomePage` untuk membangun struktur halaman dengan `AppBar` dan `body` yang berisi konten utama.

#### 3. **AppBar**

- **Fungsi**: `AppBar` adalah widget yang berfungsi sebagai navbar atas aplikasi. Biasanya digunakan untuk menampilkan judul dan tindakan penting di bagian atas halaman.

- **Penjelasan**: Digunakan untuk menampilkan judul "Toko Ungu" dengan gaya teks yang tebal dan warna latar belakang sesuai tema utama aplikasi.

#### 4. **Padding**

- **Fungsi**: `Padding` digunakan untuk memberikan jarak (ruang) di sekitar widget.

- **Penjelasan**: Digunakan di `MyHomePage` untuk memberikan ruang di sekitar widget utama dalam `body`, dan juga untuk jarak antara teks dan ikon dalam berbagai widget.

#### 5. **Column**

- **Fungsi**: `Column` adalah widget yang menyusun widget anaknya secara vertikal.

- **Penjelasan**: Digunakan dalam `MyHomePage` untuk menyusun widget `Row`, teks sambutan, dan `GridView` secara vertikal.

#### 6. **Row**

- **Fungsi**: `Row` adalah widget yang menyusun widget anaknya secara horizontal.

- **Penjelasan**: Digunakan untuk menampilkan `InfoCard` (berisi NPM, Name, dan Class) secara horizontal agar tampil dalam satu baris.

#### 7. **Text**

- **Fungsi**: `Text` adalah widget untuk menampilkan teks pada layar.

- **Penjelasan**: Digunakan di berbagai tempat untuk menampilkan teks statis seperti judul, informasi, dan nama tombol pada setiap item dalam grid.

#### 8. **GridView.count**

- **Fungsi**: `GridView.count` adalah widget untuk menampilkan anak-anaknya dalam tata letak grid yang memiliki jumlah kolom yang ditentukan.

- **Penjelasan**: Digunakan untuk menampilkan tombol `ItemCard` dalam grid 3 kolom, menampilkan opsi seperti "Lihat Daftar Produk," "Tambah Produk," dan "Logout".

#### 9. **Card**

- **Fungsi**: `Card` adalah widget yang memberikan efek kartu pada widget yang ada di dalamnya, biasanya dengan sudut yang sedikit melengkung dan efek bayangan.

- **Penjelasan**: Digunakan dalam `InfoCard` untuk menampilkan informasi seperti NPM, Nama, dan Kelas dalam tampilan kartu yang terpisah.

#### 10. **Container**

- **Fungsi**: `Container` adalah widget serbaguna yang dapat digunakan untuk memberi batas, margin, padding, ukuran, dan dekorasi pada widget anak di dalamnya.

- **Penjelasan**: Digunakan untuk menampung teks dan ikon dalam `InfoCard` serta dalam `ItemCard` untuk mengatur ukuran dan tata letak kontennya.

#### 11. **Icon**

- **Fungsi**: `Icon` adalah widget untuk menampilkan ikon pada layar.

- **Penjelasan**: Digunakan untuk menampilkan ikon tertentu pada setiap item di `ItemCard` sesuai dengan nama itemnya, seperti `Icons.list`, `Icons.add`, dan `Icons.logout`.

#### 12. **InkWell**

- **Fungsi**: `InkWell` adalah widget yang menambahkan efek klik atau sentuhan pada widget anak yang dibungkusnya.

- **Penjelasan**: Digunakan dalam `ItemCard` untuk menambahkan aksi ketika kartu ditekan, seperti menampilkan pesan `SnackBar` dengan teks sesuai nama item yang ditekan.

#### 13. **SnackBar**

- **Fungsi**: `SnackBar` adalah widget yang menampilkan pesan singkat di bagian bawah layar.

- **Penjelasan**: Digunakan dalam `InkWell` untuk menampilkan pesan yang menunjukkan item yang ditekan oleh pengguna, seperti "Kamu telah menekan tombol Lihat Daftar Produk!"

#### 14. **Material**

- **Fungsi**: `Material` adalah widget dasar untuk tampilan material design yang memungkinkan penerapan efek ripple dan dekorasi dasar.

- **Penjelasan**: Digunakan di `ItemCard` untuk memberikan efek material pada setiap tombol, seperti latar belakang dengan warna tertentu berdasarkan nama item (misalnya, hijau untuk "Lihat Daftar Produk").

#### 15. **MediaQuery**

- **Fungsi**: `MediaQuery` adalah widget untuk mendapatkan informasi tentang ukuran dan orientasi layar perangkat.

- **Penjelasan**: Digunakan di `InfoCard` untuk mengatur lebar kartu secara dinamis berdasarkan lebar layar perangkat (`MediaQuery.of(context).size.width`), membuat desain responsif.

#### 16. **StatelessWidget**

- **Fungsi**: `StatelessWidget` adalah widget yang tidak memiliki state dan hanya digunakan untuk menampilkan data statis yang tidak berubah.

- **Penjelasan**: Digunakan di `MyApp`, `MyHomePage`, `InfoCard`, dan `ItemCard` karena widget ini tidak memerlukan perubahan state selama masa hidupnya.

_Berikut adalah widget yang dibuat sendiri :_

#### 1. **InfoCard**

- **Fungsi**: `InfoCard` adalah widget kustom yang digunakan untuk menampilkan informasi statis seperti NPM, Nama, dan Kelas.

- **Penjelasan**: Widget ini terdiri dari sebuah `Card` yang menampilkan dua teks, `title` dan `content`, yang disusun dalam bentuk vertikal. `InfoCard` tidak bergantung pada widget bawaan tertentu untuk menampilkan informasi, sehingga menjadikannya widget khusus yang dapat digunakan kembali di bagian lain aplikasi.

#### 2. **ItemCard**

- **Fungsi**: `ItemCard` adalah widget kustom yang digunakan untuk menampilkan satu item dalam bentuk kartu, dengan ikon dan nama item yang berasal dari objek `ItemHomepage`. Ini juga menangani aksi ketika kartu ditekan.

- **Penjelasan**: `ItemCard` menerima objek `ItemHomepage` dan menampilkan `name` dan `icon` dalam bentuk ikon dan teks dengan warna yang ditentukan berdasarkan nama item. Selain itu, `ItemCard` menggunakan `InkWell` untuk menambahkan aksi klik yang akan menampilkan `SnackBar`.

### 3) Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` dalam Flutter memiliki peran penting dalam memperbarui tampilan antarmuka pengguna (UI) dari aplikasi yang menggunakan **Stateful Widget**. Berikut adalah penjelasan lengkap mengenai fungsi `setState()` dan variabel yang dapat terdampak olehnya:

#### Fungsi `setState()`

`setState()` adalah fungsi yang digunakan dalam **Stateful Widget** untuk memberi tahu Flutter bahwa ada perubahan pada state (keadaan) aplikasi yang memerlukan pembaruan UI. Saat `setState()` dipanggil, Flutter akan merender ulang bagian dari UI yang bergantung pada state yang telah berubah. Ini berarti `build` akan dipanggil lagi, dan UI diperbarui untuk mencerminkan state yang terbaru.

#### Cara Kerja:

Ketika `setState()` dipanggil, Flutter akan:

1.  Menjalankan fungsi yang ada di dalam `setState()` untuk memperbarui nilai variabel atau properti yang disimpan dalam objek `State`.
2.  Menandai bagian UI terkait untuk dirender ulang berdasarkan perubahan tersebut.
3.  Menjalankan kembali metode `build()` pada widget `StatefulWidget` untuk menerapkan pembaruan tersebut.

#### Kapan `setState()` Digunakan:

- `setState()` digunakan setiap kali ada perubahan state yang ingin Anda tampilkan di UI. Misalnya, jika Anda memiliki tombol untuk meningkatkan nilai counter, Anda akan memanggil `setState()` untuk memperbarui nilai counter dan memperbarui tampilan UI dengan nilai counter terbaru.

- `setState()` hanya boleh digunakan dalam **State class** dari **Stateful Widget** dan tidak boleh digunakan dalam **Stateless Widget**, karena **Stateless Widget** tidak memiliki state yang bisa berubah.

#### Variabel yang Dapat Terdampak oleh `setState()`

Setiap variabel atau objek yang didefinisikan dalam **State class** dari widget **Stateful Widget** dan yang digunakan dalam metode `build()` dapat terdampak oleh `setState()`. Berikut adalah beberapa jenis variabel yang sering terdampak oleh `setState()`:

1.  **Variabel Primitif** (seperti `int`, `double`, `bool`):

    - Misalnya, `int counter = 0;`. Jika variabel ini diperbarui dalam `setState()`, Flutter akan merender ulang UI yang bergantung pada variabel tersebut.

2.  **Variabel Koleksi** (seperti `List`, `Map`, atau `Set`):

    - Misalnya, `List<String> items = [];`. Jika elemen dalam list ini ditambahkan, dihapus, atau diubah, Anda dapat memanggil `setState()` untuk memperbarui tampilan yang menampilkan daftar tersebut.

3.  **Objek Custom** (seperti kelas yang dibuat sendiri):

    - Misalnya, Anda memiliki kelas `User` dengan atribut `name` dan `age`. Jika Anda memiliki objek `User` sebagai bagian dari state dan memperbarui atributnya, Anda harus memanggil `setState()` agar perubahan terlihat di UI.

4.  **Variabel yang Menggambarkan Status UI**:

- Misalnya, variabel `bool isLoading = false;` untuk menunjukkan status loading. Anda dapat memperbarui variabel ini di dalam `setState()` untuk menampilkan indikator loading atau menyesuaikan UI.

#### Hal yang Perlu Diperhatikan dalam Penggunaan `setState()`

- **Efisiensi**: Jangan memanggil `setState()` secara berlebihan karena setiap pemanggilan akan menyebabkan `build()` dipanggil ulang, yang bisa berdampak pada performa.

- **Pembatasan Lingkup**: Gunakan `setState()` hanya untuk memperbarui variabel yang benar-benar diperlukan dalam metode `build()` agar efisien.

- **Asynchronous State Update**: Jika memperbarui state secara asynchronous (misalnya, mengambil data dari API), pastikan widget masih dipasang (`mounted`) sebelum memanggil `setState()` untuk menghindari kesalahan.

### 4) Jelaskan perbedaan antara `const` dengan `final`.

Dalam Dart, kata kunci `const` dan `final` digunakan untuk membuat variabel dengan nilai tetap (immutable), namun keduanya memiliki perbedaan dalam cara kerjanya dan kapan mereka digunakan. Berikut adalah penjelasan detail mengenai perbedaan `const` dan `final`:

#### 1. **Kata Kunci `final`**

- **Definisi**: `final` digunakan untuk variabel yang nilainya ditetapkan hanya satu kali, saat runtime. Setelah nilai diinisialisasi, nilainya tidak dapat diubah, tetapi proses inisialisasinya bisa terjadi saat aplikasi berjalan.

- **Kapan Nilai Ditentukan**: Nilai untuk variabel `final` bisa ditentukan saat runtime. Ini berarti Anda bisa menetapkan nilai berdasarkan perhitungan atau kondisi yang tidak diketahui sebelum aplikasi berjalan.

- **Mutable vs. Immutable**: Meskipun variabel `final` tidak dapat diubah (immutable), objek yang diacu oleh variabel `final` bisa saja mutable jika tipe objeknya mutable. Misalnya, sebuah list yang diacu oleh `final` bisa memiliki elemen yang dimodifikasi, tetapi Anda tidak bisa mengubah referensi list-nya

#### 2. **Kata Kunci `const`**

- **Definisi**: `const` digunakan untuk variabel yang bersifat compile-time constant, artinya nilai variabel tersebut harus sudah diketahui pada saat kompilasi, bukan saat runtime.

- **Kapan Nilai Ditentukan**: Nilai variabel `const` harus diinisialisasi dengan nilai konstan yang diketahui saat kompilasi. Ini berarti `const` hanya bisa digunakan dengan nilai yang benar-benar tidak berubah sepanjang waktu dan dapat dievaluasi pada saat kompilasi.

- **Kedalaman Immutability**: Variabel `const` bersifat immutable hingga kedalaman objeknya. Jadi, jika Anda memiliki list `const`, elemen di dalamnya juga tidak dapat dimodifikasi, menjadikan `const` lebih ketat dibandingkan `final`.

### 5) Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas.

##### Check 1 : Membuat sebuah program Flutter baru dengan tema _E-Commerce_ yang sesuai dengan tugas-tugas sebelumnya.

1. Saya membuat folder baru di komputer saya untuk menyimpan proyek flutter saya.
2. Kemudian, buka termina di folder tersebut dan saya generate proyek flutter baru pada terminal dengan nama toko_ungu. Berikut command nya :

```bash
flutter create toko_ungu
cd toko_ungu
```

3. Saya jalankan proyek tersebut di terminal dengan command sebagai berikut :

```bash
flutter run
```

4. Agar proyek saya lebih rapih, maka saya perlu melakukan perubahan pada proyek saya. Saya perlu membuat file baru yaitu `menu.dart` pada direktori `toko_ungu/lib` dan kemudian saya isikan dengan kode berikut :

```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String npm = '2306245775'; // NPM
  final String name = 'Jeremia Rangga Setyawan'; // Nama
  final String className = 'PBP B'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Toko Ungu" dengan teks putih dan tebal.
        title: const Text(
          'Toko Ungu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Toko Ungu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; // Judul kartu.
  final String content; // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width /
            3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}
```

5. Saya juga perlu mengubah `main.dart` saya di direktori yang sama dengan kode sebagai berikut :

```dart
import 'package:toko_ungu/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF6A0DAD), // Ungu kustom
          secondary: const Color(0xFF9B30FF), // Ungu elemen sekunder
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

##### Check 2 : Membuat tiga tombol sederhana dengan ikon dan teks untuk melihat daftar produk, menambah produk dan logout.

6. Sebelum saya membuat tombol, saya perlu membuat class baru bernama `ItemHomepage` yang berisi atribut-atribur dari card seperti name dan icon. Pada file `menu.dart`, letakkan kode berikut di luar class `MyHomePage` yang sudah ada.

```dart
 ...
 class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }
 ...
```

7. Kemudian, saya perlu membuat list of `ItemHomepage` yang berisi ketiga tombol yang diminta. Berikut kodenya :

```dart
 class MyHomePage extends StatelessWidget {
     ...
     final List<ItemHomepage> items = [
         ItemHomepage("Lihat Daftar Produk", Icons.list),
         ItemHomepage("Tambah Produk", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
     ...
 }
```

8. Saya perlu membuat class baru bernama `ItemCard` untuk menampilkan tombol tadi.

```dart
...
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
...
```

9. Saya juga perlu mengintegrasikan ItemCard tadi untuk ditampilkan di MyHomePage. Berikut kode nya :

```dart
...
class MyHomePage extends StatelessWidget {
  ...

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        title: const Text(
          'Toko Ungu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Toko Ungu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
...
```

##### Check 3 : Memunculkan `Snackbar` saat tombol ditekan.

10. Untuk menampilkan snackbar saat tombol ditekan, maka saya perlu melakukan perubahan di class `ItemCard`. Berikut perubahannya :

```dart
...
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      // PERUBAHAN : MENAMPILKAN SNACKBAR
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
        // SELESAI PERUBAHAN
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
...
```

##### Check 4 : Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).

11. Agar setiap tombol memiliki warna yang berbeda, maka saya perlu menambah atribut dan parameter baru di class `ItemHomepage` sebagai berikut :

```dart
...
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Atribut baru

  ItemHomepage(this.name, this.icon, this.color); // Parameter baru
}
...
```

12. Kemudian, saya perlu mengganti isi warna dari `ItemCard` dengan atribut color tersebut. Berikut perubahan kodenya :

```dart
...
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Warna tombol berdasarkan item
      borderRadius: BorderRadius.circular(12),
      ...
```

13. Sekarang, saya perlu menambahkan parameter warna saat saya memanggil class `ItemHompage` di class `MyHomePage`. Berikut perubahan kodenya :

```dart
...
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.lightGreen), // Menambahkan warna hijau
    ItemHomepage("Tambah Produk", Icons.add, Colors.lightBlue), // Menambahkan warna biru
    ItemHomepage("Logout", Icons.logout, Colors.orange), // Menambahkan warna oren
  ];
 ...
```

14. Selesai, saya sudah mengimplementasikan seluruh checklist yang diminta.

## Tugas 8

### 1) Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

#### Kegunaan `const` di Flutter

Dalam Flutter, kata kunci `const` digunakan untuk mendefinisikan **nilai atau objek konstan** yang tidak akan berubah selama runtime aplikasi. Objek yang dibuat dengan `const` bersifat **immutable** dan memiliki performa optimal karena mereka dapat dibagikan di seluruh aplikasi tanpa membuat instance baru.

#### Keuntungan Menggunakan `const`

1.  **Optimalisasi Performa**  
    Karena objek `const` hanya dibuat sekali (saat compile time), Flutter tidak perlu membuat instance baru dari objek tersebut saat runtime. Ini mengurangi overhead memori dan mempercepat rendering.
    
2.  **Widget Identitas**  
    Pada framework Flutter, widget `const` memiliki identitas yang tetap. Hal ini memungkinkan **widget tree** untuk mendeteksi bahwa widget tidak berubah, sehingga tidak perlu dirender ulang. Ini meningkatkan efisiensi aplikasi.
    
3.  **Meningkatkan Kejelasan Kode**  
    Dengan menggunakan `const`, developer dapat dengan jelas menunjukkan bahwa nilai atau widget bersifat tetap, sehingga kode lebih mudah dipahami.

### Kapan Sebaiknya Menggunakan `const`?

1.  **Nilai Konstan yang Tidak Berubah**  
    Gunakan `const` untuk mendefinisikan nilai atau objek yang tidak akan berubah sepanjang siklus hidup aplikasi. Misalnya:
    ```dart
    const String appName = "MyApp";
    ``` 
    
2.  **Widget Stateless**  
    Pada widget yang tidak berubah, gunakan `const` untuk mengoptimalkan rendering:
    ```dart
    const Text('Hello, World');
    ``` 
    
3.  **Default Parameter atau Pengaturan Konfigurasi**  
    `const` ideal digunakan untuk memberikan nilai default yang statis dalam konfigurasi:
    ```dart
    const EdgeInsets padding = EdgeInsets.all(8.0);
    ``` 
    
4.  **Penggunaan Berulang**  
    Jika Anda memiliki elemen UI yang sama berulang kali, buat elemen tersebut sebagai `const` untuk mengurangi overhead pembuatan instance baru.
    

### Kapan Tidak Menggunakan `const`?

1.  **Nilai yang Dapat Berubah (Dynamic)**  
    Jangan gunakan `const` jika nilai atau objek berubah selama runtime. Misalnya, ketika nilai diambil dari user input atau API:
    ```dart
    // Tidak cocok menggunakan const
    final dynamicValue = getUserInput();
    ``` 
    
2.  **Stateful Widgets**  
    Dalam widget yang memerlukan perubahan state, tidak relevan untuk menggunakan `const` karena sifatnya yang immutable.
    
3.  **Ketidakjelasan Compile Time**  
    Jika suatu nilai tidak dapat dipastikan pada waktu kompilasi, gunakan `final` atau deklarasi biasa. Contoh:
    ```dart
    final timeNow = DateTime.now(); // Tidak bisa const
    ``` 

### 2) Jelaskan dan bandingkan penggunaan _Column_ dan _Row_ pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

#### **Column vs Row pada Flutter**

**Column** dan **Row** adalah dua widget tata letak (layout) utama di Flutter yang digunakan untuk mengatur widget anak (**children**) dalam sebuah **container**. Meskipun keduanya berfungsi untuk mengatur tata letak, perbedaannya terletak pada arah penempatan elemen.

----------

#### **1. Column**

#### Pengertian

-   **Column** adalah widget yang mengatur elemen secara **vertikal** (dari atas ke bawah).
-   Digunakan ketika elemen dalam layout harus disusun dalam **sumbu Y**.

#### Karakteristik

-   **Arah Tata Letak:** Vertikal (main axis = sumbu Y, cross axis = sumbu X).
-   Mendukung properti seperti **mainAxisAlignment** (penempatan pada sumbu Y) dan **crossAxisAlignment** (penempatan pada sumbu X).
-   Cocok untuk tata letak yang membutuhkan elemen ditumpuk secara berurutan.

#### Contoh Implementasi Column

```dart
import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Elemen di tengah sumbu Y
        crossAxisAlignment: CrossAxisAlignment.start, // Elemen rata kiri di sumbu X
        children: [
          Text('Item 1', style: TextStyle(fontSize: 20)),
          Text('Item 2', style: TextStyle(fontSize: 20)),
          Text('Item 3', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
```

#### **2. Row**

#### Pengertian

-   **Row** adalah widget yang mengatur elemen secara **horizontal** (dari kiri ke kanan).
-   Digunakan ketika elemen dalam layout harus disusun dalam **sumbu X**.

#### Karakteristik

-   **Arah Tata Letak:** Horizontal (main axis = sumbu X, cross axis = sumbu Y).
-   Mendukung properti seperti **mainAxisAlignment** (penempatan pada sumbu X) dan **crossAxisAlignment** (penempatan pada sumbu Y).
-   Cocok untuk tata letak elemen yang perlu disusun dalam satu baris.

#### Contoh Implementasi Row

```dart
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Example')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Elemen tersebar merata
        crossAxisAlignment: CrossAxisAlignment.center, // Elemen di tengah sumbu Y
        children: [
          Icon(Icons.star, size: 40, color: Colors.blue),
          Icon(Icons.favorite, size: 40, color: Colors.red),
          Icon(Icons.thumb_up, size: 40, color: Colors.green),
        ],
      ),
    );
  }
}
```

#### Perbandingan Column dan Row

| **Aspek**              | **Column**                                   | **Row**                                      |
|-------------------------|----------------------------------------------|---------------------------------------------|
| **Orientasi Tata Letak** | Vertikal (atas ke bawah).                    | Horizontal (kiri ke kanan).                 |
| **Sumbu Utama (Main Axis)** | Sumbu Y.                                   | Sumbu X.                                    |
| **Sumbu Lintas (Cross Axis)** | Sumbu X.                                   | Sumbu Y.                                    |
| **Properti Tata Letak** | **mainAxisAlignment**, **crossAxisAlignment** | **mainAxisAlignment**, **crossAxisAlignment** |
| **Contoh Penggunaan**   | Form, daftar elemen vertikal.                | Navigasi horizontal, baris elemen ikon.     |

### 3) Sebutkan apa saja elemen input yang kamu gunakan pada halaman _form_ yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

#### Input digunakan di tugas

Dalam tugas ini saya menggunakan dua input untuk halaman form saya. Berikut penjelasannya :

1. **TextFormField**
Versi _advance_ dari `TextField` yang terintegrasi dengan `Form`. Menyediakan fitur validasi input langsung dalam form, membuatnya ideal untuk pengisian data yang membutuhkan pemeriksaan kesalahan.

2. **ElevatedButton**
Tombol berbasis teks yang memberikan feedback elevasi saat ditekan. Sering digunakan untuk memicu tindakan, seperti menyimpan data atau mengirim form.

#### Input lainnya di Flutter

Selain kedua input tersebut, flutter masih memiliki beberapa input lainnya. Berikut penjelasannya :

1. **TextField**
Elemen input teks dasar yang digunakan untuk memasukkan teks dari pengguna. Cocok untuk masukan satu baris seperti nama atau email. Dapat dikustomisasi dengan properti seperti `controller`, `decoration`, dan `keyboardType`.

2. **DropdownButtonFormField**
Elemen input yang memungkinkan pengguna memilih opsi dari daftar dropdown. Sangat bermanfaat untuk input yang memiliki pilihan terbatas seperti kategori produk atau status.

3. **Checkbox**
Elemen input yang memungkinkan pengguna memilih opsi benar atau salah (checked atau unchecked). Umumnya digunakan dalam form untuk konfirmasi, seperti persetujuan syarat dan ketentuan.

4. **Switch**
Elemen input yang berfungsi sebagai tombol on/off. Biasanya digunakan untuk pengaturan yang memiliki dua status, seperti mengaktifkan atau menonaktifkan fitur.

5. **Radio**
Elemen input yang digunakan untuk memilih satu opsi dari beberapa pilihan yang tersedia. Sering digunakan bersama `ListTile` untuk memberikan label pada pilihan.

6. **Slider**
Elemen input yang memungkinkan pengguna memilih nilai dalam rentang tertentu. Biasanya digunakan untuk memilih angka atau level, seperti volume suara atau harga.

7. **DatePicker**
Digunakan untuk memilih tanggal. Elemen ini dapat dipanggil dengan fungsi `showDatePicker()` untuk membuka dialog tanggal yang memungkinkan pengguna memilih tanggal tertentu.

8. **TimePicker**
Digunakan untuk memilih waktu. Sama seperti `DatePicker`, elemen ini dapat dipanggil dengan fungsi `showTimePicker()` dan membuka dialog untuk memilih waktu.

### 4) Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Cara saya untuk mengatur tema dalam aplikasi flutter agar aplikasi yang dibuat konsisten adalah :

1. **Definisikan Warna Utama dan Sekunder**
Saya mendefinisikan `primary` dan `secondary` dengan `ColorScheme.fromSwatch().copyWith`, yang memastikan bahwa warna utama (`primary`) dan sekunder (`secondary`) digunakan secara konsisten dalam komponen-komponen utama seperti `AppBar`, tombol, dan elemen UI lainnya yang mengikuti tema.

2. **Menggunakan `useMaterial3: true`**
Menyertakan `useMaterial3: true` membantu mengadopsi elemen desain Material You, yang lebih modern dan responsif. Ini otomatis menyesuaikan elemen UI berdasarkan tema warna yang telah saya tetapkan, seperti efek elevasi dan kurva pada komponen.

3. **Memanfaatkan `Theme.of(context)` dalam Widget**
Dalam beberapa widget, Saya menggunakan `Theme.of(context)` untuk mengakses dan menerapkan warna sesuai dengan tema utama yang sudah saya definisikan sebelumnya.

Saya mencoba untuk mengaplikasikan tema yang sudah saya buat khusunya dibagian warna primer dan sekunder pada widget AppBar, Scaffold, Drawer dan widget lainnya.

### 5) Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Dalam aplikasi yang buat ini saya menggunakan Drawer yang berada di file left_drawer.dart yang kemudian menjadi parameter di Scaffold. LeftDrawer ini berisikan nama aplikasi saya yaitu Toko Ungu, Tagline aplikasi saya yaitu "Belanja Cepat, Harga Tepat – Semua yang Kamu Butuhkan Ada di Sini!", lalu tombol navigasi menggunakan ListTile yang saat tombolnya di tap maka melakukan navigasi ke page tertentu dengan pushReplacement. Namun, berbeda saat ingin 'tambah item' saya menggunakan navigasi dengan push saja agar saya bisa kembali ke laman sebelumnya.

Sekian & Terima Kasih

## Tugas 9

### 1) Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Ada beberapa alasan kita membuat model terlebih dahulu di flutter untuk melakukan pengiriman atau pengambilan data json dari backend / django. Berikut penjelasannya :

1.  **Struktur Data yang Jelas:**
    
    -   Model memungkinkan kita mendefinisikan dengan jelas atribut-atribut data yang dikirim atau diterima (misalnya, tipe data dan properti JSON).
    -   Hal ini mencegah kesalahan parsing JSON karena perubahan struktur data dari API.
    
2.  **Kemudahan Parsing dan Serialization:**
    
    -   Dengan model, kita dapat menggunakan metode seperti `fromJson()` dan `toJson()` untuk konversi data secara otomatis antara objek Dart dan format JSON.
    -   Ini lebih efisien daripada menangani JSON secara manual setiap saat.
    
3.  **Mudah Dikelola dan Dimodifikasi:**
    
    -   Ketika API Django mengalami perubahan (misalnya, menambahkan field baru), cukup mengupdate model di Flutter tanpa harus mengubah logika di seluruh aplikasi.
    
4.  **Pendeteksian Error Lebih Cepat:**
    
    -   Dengan model, IDE dapat memberikan peringatan jika ada kesalahan akses atribut atau metode yang salah karena tipe data yang tidak sesuai.
  
 ### 2) Jelaskan fungsi dari library _http_ yang sudah kamu implementasikan pada tugas ini
 
Library `http` digunakan untuk menangani **komunikasi jaringan** antara aplikasi Flutter dan server (backend) seperti django. Fungsinya mencakup:

1.  **Mengirim Permintaan HTTP:**
    
    -   Mengirim request HTTP seperti `GET`, `POST`, `PUT`, atau `DELETE` ke server, misalnya untuk mengambil data JSON atau mengirim data formulir.
  
2.  **Mengambil Data dari Server:**
    
    -   Memproses respons yang diterima dari server, biasanya dalam format JSON, lalu mengonversinya menjadi data yang dapat digunakan dalam aplikasi Flutter.

3.  **Penghubung Frontend dan Backend:**
    
    -   Menghubungkan aplikasi Flutter dengan API backend (seperti Django) untuk mendapatkan atau mengirimkan data.
  
  ### 3) Jelaskan fungsi dari CookieRequest dan jelaskan mengapa _instance_ CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` adalah sebuah library yang dirancang untuk menangani komunikasi antara aplikasi Flutter dan backend berbasis Django dengan memanfaatkan mekanisme **cookie autentikasi**. Berikut adalah fungsi utama dari `CookieRequest`:

1.  **Menyimpan Cookie Sesi:**
    
    -   Saat pengguna login, Django mengirimkan cookie sesi kepada Flutter. `CookieRequest` menyimpan cookie ini agar dapat digunakan untuk menjaga sesi autentikasi.
 
2.  **Mengelola Status Login:**
    
    -   `CookieRequest` memiliki fitur bawaan untuk memeriksa apakah pengguna sudah login (`loggedIn`) atau belum.
 
3.  **Mengirim Permintaan HTTP:**
    
    -   Mengirim permintaan HTTP seperti `GET` dan `POST` ke backend Django sambil menyertakan cookie yang disimpan. Hal ini memastikan bahwa Django mengenali permintaan sebagai bagian dari sesi autentikasi pengguna.

4.  **Menghapus Sesi Login:**
    
    -   Saat logout, `CookieRequest` menghapus cookie sesi, sehingga pengguna dianggap keluar dari aplikasi.

Instance `CookieRequest` perlu dibagikan ke semua komponen dalam aplikasi Flutter menggunakan **state management** seperti `Provider` untuk alasan berikut:

#### **1. Konsistensi Sesi Login:**

-   Dalam aplikasi berbasis autentikasi, seluruh permintaan ke server Django harus menyertakan cookie sesi. Dengan membagikan instance `CookieRequest`, semua widget dapat menggunakan cookie yang sama tanpa perlu membuat ulang instance.

#### **2. Efisiensi dan Kemudahan:**

-   Membuat instance baru setiap kali akan mengirimkan permintaan HTTP berisiko kehilangan cookie sesi. Dengan instance yang sama, pengelolaan sesi lebih sederhana dan menghindari duplikasi kode.

#### **3. State Global yang Dapat Diakses:**

-   Status seperti apakah pengguna sudah login atau belum (`loggedIn`) dapat diakses dengan mudah dari semua bagian aplikasi tanpa harus meneruskan data secara manual antar widget.

#### **4. Reaktivitas:**

-   Jika state di `CookieRequest` berubah (misalnya, pengguna logout), semua widget yang terhubung dengan instance tersebut akan diperbarui secara otomatis. Ini menjaga sinkronisasi data antar bagian aplikasi.

#### **5. Integrasi dengan Provider:**

-   Dengan memanfaatkan `Provider`, instance `CookieRequest` dapat disiapkan sekali di root aplikasi dan digunakan oleh seluruh widget tanpa perlu mengimpor ulang atau mendefinisikan ulang.

### 4) Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Proses pengiriman data dari input hingga dapat ditampilkan di Flutter melibatkan beberapa langkah utama yang mencakup interaksi antara frontend (Flutter) dan backend (Django). Berikut adalah penjelasan mekanisme lengkapnya:

**1. Input Data pada Flutter**

-   **Proses:**
    
    1.  Pengguna mengisi formulir (seperti form login, register, atau data lainnya) di aplikasi Flutter.
    2.  Data yang diisi dikumpulkan dari widget input seperti `TextField` atau `Form`.
    3.  Data ini disiapkan dalam bentuk JSON atau dictionary Dart.
    
 **2. Mengirim Data ke Django**

-   **Proses:**
    
    1.  Data yang telah disiapkan dikirim ke server Django melalui HTTP request (`POST` atau `GET`) menggunakan `http` atau `CookieRequest`.
    2.  Endpoint Django yang dituju menangani data tersebut.
    3.  Dalam pengiriman, jika menggunakan `CookieRequest`, cookie sesi ditambahkan secara otomatis untuk autentikasi.

**3. Proses Data di Django**

-   **Proses:**
    
    1.  Django menerima data melalui view yang sesuai dengan endpoint (misalnya, `/create-flutter/`).
    2.  Data JSON yang diterima di-decode dan diverifikasi.
    3.  Jika valid, Django menyimpan data ke dalam database menggunakan model Django.

**4. Mengambil Data dari Django**

-   **Proses:**
    
    1.  Flutter mengirimkan permintaan HTTP `GET` ke endpoint Django untuk mengambil data yang disimpan di database.
    2.  Django memproses permintaan dan mengembalikan data dalam bentuk JSON.

**5. Mengolah Data di Flutter**

-   **Proses:**
    
    1.  Data JSON yang diterima di-decode menjadi objek Dart menggunakan model yang sesuai.
    2.  Objek-objek ini disimpan dalam list atau state aplikasi untuk ditampilkan.

**6. Menampilkan Data di Flutter**

-   **Proses:**
    
    1.  Data yang telah diolah ditampilkan di layar menggunakan widget seperti `ListView`, `FutureBuilder`, atau lainnya.
    2.  UI disesuaikan agar data terlihat menarik dan mudah dibaca.

### 5) Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Proses autentikasi mencakup alur data mulai dari input di Flutter, pengolahan di Django, hingga respons kembali ke Flutter. Berikut adalah penjelasan rinci setiap tahapannya:

 **1. Register (Pendaftaran Akun)**

**Di Flutter (Input Data)**

-   **Input:** Pengguna memasukkan data pendaftaran seperti `username`, `password`, dan `confirm password` melalui form register.

-   **Pengiriman Data:** Data dikemas dalam JSON dan dikirim ke endpoint Django `/auth/register/` menggunakan HTTP request (biasanya `POST`).

**Di Django (Pemrosesan Data)**

-   **Penerimaan Data:** Django menerima data JSON dari Flutter melalui view register.

-   **Validasi:**
    1.  Django memeriksa apakah password dan confirm password cocok.
    2.  Memeriksa apakah username sudah terdaftar.
    
-   **Pembuatan Akun:** Jika valid, Django membuat user baru menggunakan model `User` dan menyimpannya ke database.

-   **Respons:** Django mengirimkan respons JSON ke Flutter dengan status sukses atau gagal.

**Di Flutter (Hasil Register)**

-   **Tampilan:**
    1.  Jika berhasil, pengguna diarahkan ke halaman login.
    2.  Jika gagal, pesan error ditampilkan.

**2. Login**

**Di Flutter (Input Data)**

-   **Input:** Pengguna memasukkan `username` dan `password` melalui form login.

-   **Pengiriman Data:** Data dikirim ke endpoint Django `/auth/login/` menggunakan HTTP request (`POST`).

**Di Django (Pemrosesan Data)**

-   **Penerimaan Data:** Django menerima data JSON dan memprosesnya melalui view login.

-   **Validasi:**
    1.  Django memeriksa kredensial menggunakan fungsi `authenticate`.
    2.  Jika valid, Django memvalidasi apakah akun masih aktif.

-   **Penyimpanan Sesi:** Jika valid, Django membuat cookie sesi untuk pengguna menggunakan fungsi `login`.

-   **Respons:** Django mengirimkan respons JSON dengan status sukses, pesan, dan cookie sesi ke Flutter.

**Di Flutter (Hasil Login)**

-   **Tampilan:**
    1.  Jika login berhasil, Flutter menyimpan status login (`loggedIn`) dan cookie sesi menggunakan `CookieRequest`.
    2.  Pengguna diarahkan ke menu utama.
    3.  Jika login gagal, pesan error ditampilkan.

**3. Logout**

**Di Flutter (Permintaan Logout)**

-   **Aksi:** Pengguna menekan tombol logout.

-   **Pengiriman Data:** Flutter mengirim permintaan HTTP (`POST`) ke endpoint Django `/auth/logout/` untuk menghapus sesi.

#### **Di Django (Pemrosesan Logout)**

-   **Penerimaan Data:** Django menerima permintaan logout melalui view logout.

-   **Penghapusan Sesi:** Django menghapus cookie sesi pengguna menggunakan fungsi `logout`.

-   **Respons:** Django mengirimkan respons JSON dengan status sukses atau gagal.

**Di Flutter (Hasil Logout)**

-   **Tampilan:**
    1.  Jika logout berhasil, Flutter menghapus status login dan mengarahkan pengguna kembali ke halaman login.
    2.  Jika gagal, pesan error ditampilkan.
 
 ### 6) Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_! (bukan hanya sekadar mengikuti tutorial).

1. Saya membuat django app baru bernama `authentication` pada proyek Django yang sudah dibuat di tugas sebelum UTS.
2. Seperti biasa, saya perlu menambahkan app tersebut pada `INSTALLED_APPS` pada main project di `settings.py`
3. Saya juga perlu menginstall `django-cors-headers` di proyek Django saya.
4. Saya juga menambahkan `corsheaders` ke `INSTALLED_APPS` dan menambahkan `corsheaders.middleware.CorsMiddleware` ke `MIDDLEWARE` di aplikasi Django saya.
5. Variabel berikut juga perlu ditambahkan di `settings.py` di main proyek saya :
```python
...
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
...
```
6. Saya perlu membuat beberapa method di views.py saya di aplikasi authentication. Berikut kodenya :
```python
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```

9. Saya juga perlu membuat file urs.py di app `authentication` saya dan menambahkan url di file `toko_ungu/urls.py`
10. Sebelum saya masuk ke kodingan flutter, saya perlu menginstall beberapa package berikut :
```bash
flutter pub add provider
flutter pub add pbp_django_auth
```  
11. Saya perlu memodifikasi root widget saya yang berada di aplikasi main.dart menjadi sebagai berikut :
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Toko Ungu',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ).copyWith(secondary: Colors.deepPurple[400]),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
```
12. Selanjutnya saya akan membuat page login, maka saya perlu membuat file `login.dart` pada folder screens. Kemudian, saya isikan dengan kode berikut :
```dart
import 'package:toko_ungu/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
// TODO: Import halaman RegisterPage jika sudah dibuat

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurple[400]),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Cek kredensial
                      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request
                          .login("http://[APP_URL_KAMU]/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Selamat datang, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

13. Saya perlu mengganti halaman utama menjadi halaman login. Maka 1.  Pada  _file_  `main.dart`, pada Widget  `MaterialApp(...)`, ubah  `home: MyHomePage()`  menjadi  `home: const LoginPage()`
14. Sekarang, saya perlu menambahkan metode baru di file django `authentication/views.py`. Berikut penambahannya :
```python
from django.contrib.auth.models import User
import json

...

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```
15. Tambahkan path baru di `urls.py` proyek
16. Selanjutnya, saya perlu membuat halaman register di flutter. Maka saya perlu membuat berkas baru di folder `screens` dengan nama `register.dart`. Kemudian, saya isikan dengan kode berikut :
```dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mental_health_tracker/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://[APP_URL_KAMU]/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
17. Berikutnya, saya perlu membuat model kustom di flutter. Saya menggunakan website Quicktype untuk mempermudah.
18. Hasil convert dari website tersebut saya masukkan ke berkas baru bernama `lib/models/product_entry.dart`
19. Untuk melakukan fetching data, maka saya perlu menginstall package `flutter pub add http` pada proyek flutter saya.
20. Pada file `android/app/src/main/AndroidManifest.xml`, tambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
```xml
...
    <application>
    ...
    </application>
    <!-- Required to fetch data from the Internet. -->
    <uses-permission android:name="android.permission.INTERNET" />
...
```
21. Untuk menampilkan data dari django, saya perlu membuat halaman baru yaitu `lib/screens/list_productentry.dart`. Kemudian saya isikan dengan kode berikut :
```dart
import 'package:flutter/material.dart';
import 'package:toko_ungu/models/mood_entry.dart';
import 'package:toko_ungu/widgets/left_drawer.dart';

class MoodEntryPage extends StatefulWidget {
  const MoodEntryPage({super.key});

  @override
  State<MoodEntryPage> createState() => _MoodEntryPageState();
}

class _MoodEntryPageState extends State<MoodEntryPage> {
  Future<List<MoodEntry>> fetchMood(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://[APP_URL_KAMU]/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object MoodEntry
    List<MoodEntry> listMood = [];
    for (var d in data) {
      if (d != null) {
        listMood.add(MoodEntry.fromJson(d));
      }
    }
    return listMood;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data mood pada mental health tracker.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.mood}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.feelings}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.moodIntensity}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.time}")
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```
22. Kemudian, saya perlu menambahkan halaman `list_productentry.dart` ke `widgets/left_drawer.dart` dengan menambahkan kode berikut.
```dart
// Kode ListTile Menu
...
ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
    title: const Text('Daftar Mood'),
    onTap: () {
        // Route menu ke halaman mood
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MoodEntryPage()),
        );
    },
),
...
```
23. Saya perlu mengubah fungsi tombol `Lihat Item` pada halaman utama agar mengarahkan ke halaman `ProductPage`. Kamu dapat melakukan _redirection_ dengan menambahkan `else if` setelah kode `if(...){...}` di bagian akhir `onTap: () { }` yang ada pada file `widgets/product_card.dart`
```dart
...
else if (item.name == "Lihat Mood") {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => const MoodEntryPage()
        ),
    );
}
...
```
24. Saya tidak lupa untuk mengimpor file `ProductEntryPage` ke `left_drawer.dart` dan `product_card.dart`
25. Selanjutnya, saya ingin mengintegrasikan form flutter dengan django. Saya perlu membuat method baru di `main/views.py` pada aplikasi django saya. Berikut kodenya :
```python
from django.views.decorators.csrf import csrf_exempt
import json
from django.http import JsonResponse
...
@csrf_exempt
def create_mood_flutter(request):
    if request.method == 'POST':

        data = json.loads(request.body)
        new_mood = MoodEntry.objects.create(
            user=request.user,
            mood=data["mood"],
            mood_intensity=int(data["mood_intensity"]),
            feelings=data["feelings"]
        )

        new_mood.save()

        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)
```
26. Saya juga tidak lupa untuk menambahkan path baru di `main/urls.py` saya.
27. Saya perlu menabahkan `CookieRequest` pada `productentry_form.dart`. Berikut kodenya :
```dart
...
@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
    ...
```
28. Kemudian, saya mengubah perintah `onPressed: ()`  _button_ tambah menjadi kode berikut.
```dart
...
onPressed: () async {
    if (_formKey.currentState!.validate()) {
        // Kirim ke Django dan tunggu respons
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        final response = await request.postJson(
            "http://127.0.0.1:8000/create-flutter/",
            jsonEncode(<String, String>{
                'mood': _mood,
                'mood_intensity': _moodIntensity.toString(),
                'feelings': _feelings,
            // TODO: Sesuaikan field data sesuai dengan aplikasimu
            }),
        );
        if (context.mounted) {
            if (response['status'] == 'success') {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                content: Text("Mood baru berhasil disimpan!"),
                ));
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                );
            } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                    content:
                        Text("Terdapat kesalahan, silakan coba lagi."),
                ));
            }
        }
    }
},
...
```
29. Saya melakukan quick fix untuk mengimpor file yang dibutuhkan.
30. Sekarang, saya ingin mengimplementasikan logout. Maka saya perlu menambahkan method baru di `authentication/views.py`. Berikut kodenya :
```python
from django.contrib.auth import logout as auth_logout
...
@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)
```
31. Seperti biasa, saya perlu menambahkan path baru di `authentication/urls.py`.
32. Saya perlu menambahkan `CookieRequest` di file `lib/widgets/product_card.dart`. Berikut kodenya :
```dart
...
@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
        ...
```
33. Saya perlu mengubah perintah `onTap: () {...}` pada widget `Inkwell` menjadi `onTap: () async {...}` agar widget `Inkwell` dapat melakukan proses logout secara asinkronus.
34. Saya perlu menambahkan kode berikut ke dalam `async {...}` di bagian akhir:
```dart
...
// statement if sebelumnya
// tambahkan else if baru seperti di bawah ini
else if (item.name == "Logout") {
    final response = await request.logout(
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        "http://127.0.0.1:8000/auth/logout/");
    String message = response["message"];
    if (context.mounted) {
        if (response['status']) {
            String uname = response["username"];
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
            ));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
            );
        } else {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(message),
                ),
            );
        }
    }
}
...
```
35. Selesai, semua checklist sudah diimplementasikan.

Sekian & Terima kasih.