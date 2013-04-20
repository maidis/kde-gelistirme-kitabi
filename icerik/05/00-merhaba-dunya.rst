Merhaba Dünya
--------------

Giriş
^^^^^

Yazacağınız ilk KDE programı tahmin edebileceğiniz gibi size sıcak bir merhaba  diyecek olan Merhaba Dünya örneği. Bunun için bir KMessageBox kullanacağız ve onun düğmelerinden birini özelleştireceğiz.

.. image:: 00_res/merhaba01.png

İpucu: Kitap boyunca karşılaştığınız sınıflar hakkında daha çok bilgi almak için KDE'nin yerleşik arama motorunu kullanabilirsiniz. Örneğin KMessageBox hakkında merak ettiğiniz bir şeyler olursa Dolphin, Rekonq veya KRunner'da sadece kde:kmessagebox yazarak doğrudan ilgili belgelendirmeye ulaşabilirsiniz.

İpucu: Verilen örnek ve ilerideki daha büyük projeler için QtCreator veya KDevelop gibi gelişmiş bütünleşik geliştirme ortamlarını tercih edebileceğiniz gibi Kate gibi bir metin düzenleyiciyi de kullanabilirsiniz.

Kod
^^^

İhtiyacımız olan tüm kodlar tek bir dosyada main.cpp'de olacak. Şimdi aşağıdaki kodları içerecek şekilde bu dosyayı oluşturun:

.. literalinclude:: 00/main.cpp
   :language: c++
   :linenos:

Bu programda karşılaşacağımız KDE'ye özgü ilk kod KAboutData. Bu, kısa bir açıklama, yazar, lisans bilgileri gibi program hakkındaki çeşitli temel bilgileri saklamak için kullanılan bir sınıftır. Hemen hemen her KDE uygulamasında bu sınıf kullanmalısınız.

Daha sonra KCmdLineArgs ile karşılaşıyoruz. Bu sınıf komut satırı anahtarları belirlemek için kullanılır. Örneğin programın belirtilen bir dosya ile açılması sağlanabilir. Bununla birlikte bu örnekte gelişmiş bir şeyler yapmayacağımızdan KCmdLineArgs'ı KAboutData nesnesi ile ilklendiriyoruz. Böylece programla birlikte istersek --version ve --author parametrelerini kullanabileceğiz.

Daha sonra KApplication nesnesini oluşturuyoruz. i18n gibi şeyler için gerektiğinden tüm programlarda bir kez yapılması gerekiyor.

Gerekli tüm KDE ayarlamalarını yapmış bulunuyoruz. Şimdi uygulamamız ile daha ilginç şeyler yapmaya başlayabiliriz. Bir açılır kutu oluşturacağız ve bununla da yetinmeyip düğmelerinden birinde özelleştirmeler yapacağız.

Bu özelleştirmeyi yapmak için KGuiItem nesnesini kullanmamız gerekiyor. KGuiItem kurucusunun ilk argümanı öğe (şu anki durumda düğmenin) üzerinde görünecek metin.

Daha sonra düğme için simge ayarlayabileceğimiz bir seçeneğimiz var ama bir simge kullanmayacağımız için burada sadece QString() kullanıyoruz.

Sonrasında bir öğenin üzerine gelindiğinde görünen araç ipucusunu ayarlıyoruz ve son olarak da sağ fare tuşuyla açılabilecek içerik menüsünden, başlık çubuğundaki soru işareti düğmesinden veya Shift + F1 tuşlarından erişilebilen Bu Nedir? metnini belirliyoruz.

Artık mükemmel bir düğmemiz olduğuna göre açılır kutumuzu oluşturabiliriz. Öntanımlı olarak Evet ve Hayır düğmelerine sahip bir mesaj kutusu oluşturan KMessageBox::questionYesNo() fonksiyonunu çağırıyoruz. İkinci argüman düğmelerin üzerinde çıkacak olan metin kutusunun metni. Üçüncü argüman ise pencere başlığı. Ve son olarak da KGuiItem'ı Evet düğmesi yerine bizim oluşturduğumuz özel düğmeyi göstermesi için ayarlıyoruz.

Burada kullanıcılarca görülebilecek tüm metinlerin i18n() fonksiyonundan geçirildiğine dikkat edin. Arayüzün çevrilebilir olması için bu gereklidir. Bu konuyu daha detaylı olarak yerelleştirmeyle ilgili bölümlerde göreceğiz.

Programın kodlarını yazma işlemini tamamladık. Şimdi de inşa ve çalıştırma aşamalarına geçelim.

İnşa
^^^^

Tüm KDE uygulamalarında inşa ortamı olarak CMake'i kullanacağız. Bir CMakeLists.txt dosyası oluşturacağız ve CMake bu dosyayı kullanarak tüm gerekli inşa dosyalarını otomatik olarak kendisi oluşturacak.

Şimdi main.cpp dosyasının olduğu dizin içinde içeriği aşağıdaki gibi olan bir CMakeLists.txt dosyası oluşturun:

.. literalinclude:: 00/CMakeLists.txt
   :language: cmake
   :linenos:

find_package() fonksiyonunu istediğimiz paketin konumunu bulur ve paket başlıklarının ve kütüphanelerinin yerini belirten bazı değişkenler ayarlar. Böylece KDE başlık dosyalarını içermek için KDE4_INCLUDES değişkenini kullanabileceğiz. Derleyicinin başlık dosyalarını bulabilmesi için bu değişkeni include_directories() fonksiyonuna geçeceğiz, böylece KDE4 başlıkları, başlıkl arama yollarının arasına eklenecek.

Sonrasında set() fonksiyonunuyla tutorial1_SRCS isimli bir değişken oluşturuyoruz ve bu örneğimiz için sadece tek kaynak dosyamızın ismine eşitliyoruz.

Daha sonra kde4_add_executable() fonksiyonunu kullanarak tutorial1_SRCS değişkeninde listelenmiş kaynak kodlarından tutorial1 isminde bir çalıştırılabilir dosya oluşturuyoruz. Ardından target_link_libraries() fonksiyonunu  ve find_package() tarafından tanımlanan KDE4_KDEUI_LIBS değişkenini kullanarak çalıştırılabilir dosyamızı KDE4 kdeui kütüphanesine bağlıyoruz. install ile başlayan satır da Makefile içine öntanımlı bir "install" hedefi yazıyor.

Derleme ve Çalıştırma
^^^^^^^^^^^^^^^^^^^^^

Programlarınızı derlemek, bağlamak ve kurmak için kdelibs, cmake, make ve gcc-c++ gibi bazı programların sisteminizde yüklü olması gerekiyor. Her şeye eksiksiz olarak sahip olduğunuzdan emin olmak için tekrar geliştirme araçlarının kurulumu bölümüne göz atabilirsiniz.

mkdir build
cd build
cmake ..
make
make install

Ve yazdığınız ilk uygulamayı çalıştırmak için de aşağıdaki komutu kullanabilirsiniz:

./tutorial1
