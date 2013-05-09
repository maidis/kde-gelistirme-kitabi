Komut Satırı Argümanları
-------------------------

Giriş
^^^^^^

Bir önceki örneğimizde dosya açma ve kaydetme özelliklerine sahip bir metin düzenleyicisi oluşturmuştuk. Şimdi örneğimizi her gün kullandığımız masaüstü uygulamalarına biraz daha benzetecek ve komut satırından veya Dolphin'in ``Birlikte Aç`` menüsünden dosya açabilir hale getireceğiz.

.. image:: 04_res/arguman01.png
   :align: center


Kod
^^^

``mainwindow.h`` dosyasında yeni olan tek ifade bir ``QString`` alan ``openFile`` fonksiyonu:

.. literalinclude:: 04/mainwindow.h
   :language: c++
   :linenos:

``mainwindow.cpp`` dosyasında da yeniden düzenlemelerden başka bir bir değişiklik yok. ``void openFile()`` fonksiyonundaki ``KFileDialog::getOpenFileName()`` çağrısı hariç her şey ``void openFile(const QString &inputFileName)`` fonksiyonuna taşınıyor. Böylece istediğimiz zaman ``openFile()`` ile bir iletişim penceresi gösterebiliyoruz, dosyanın ismini halihazırda bildiğimiz durumlarda ise ``openFile(QString)`` ile doğrudan dosyayı açabiliyoruz.

.. literalinclude:: 04/mainwindow.cpp
   :language: c++
   :linenos:

İşte ``KCmdLineArgs`` ile ilgili işlerin gerçekleştiği yer ``main.cpp`` dosyası:

.. literalinclude:: 04/main.cpp
   :language: c++
   :linenos:

KCmdLineArgs, uygulamalar için kolayca erişilebilen komut satırı argümanları sunan bir komut satırı argüman yönetim sınıfıdır. Sunulan argümanlar, Qt'ye özel, KDE'ye özel ve uygulamanın kendisine ait argümanları içerir. Sınıf ``main()`` içinde statik ``init()`` metodu ile kullanılır.

``tutorial5ui.rc`` dosyası ismi hariç son iki örneğimizle tamamen aynı:

.. literalinclude:: 04/tutorial5ui.rc
   :language: xml
   :linenos:

İnşa
^^^^^
Örneğimizin derlenip çalıştırılabilmesi için ``CMakeLists.txt`` dosyasını da yazıyoruz:

.. literalinclude:: 04/CMakeLists.txt
   :language: cmake
   :linenos:

Derleme ve Çalıştırma
^^^^^^^^^^^^^^^^^^^^^^
Şimdi örneğimizi çalıştırıp komut satırı argümanıyla bir dosya açmayı deneyelim:

.. code-block:: bash

   mkdir build
   cd build
   cmake .. -DCMAKE_INSTALL_PREFIX=$HOME
   make install
   echo "Merhaba Dünya" > $HOME/hede.txt
   $HOME/bin/tutorial5 $HOME/hede.txt
