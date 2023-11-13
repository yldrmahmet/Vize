BLM-3029 Çevik Yazılım Geliştirme

Q1 : data.frame’e veri ithali ve veri kalite kontrolü [20 puan]
Özellik 1.1) Aşağıdaki linkteki dosyayı bilgisayarınıza indirin https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv. Dosyanın sabit diskin ismi MapsThatChangedOurWorld_StoryMap_Data.csv olmalıdır.
Özellik 1.2) Bu dosyanın içeriğini maps adlı bir data.frame nesnesine ithal edin. Bu nesnenin boyutları c(10,9) olmalıdır. csv dosyasının ilk satırındaki bilgiler data.frame’in sütun isimleri olmalıdır.
Özellik 1.3) Latitude adlı sütunu işleyin : bütün ”N” harflerini silin. Sadece sayısal character’ler kalmalıdır.
Özellik 1.4) Longitude adlı sütunda ”W” harfi geçen geçen bütün satırların index’ini bulun ve bunu idx adlı değişkene atayın.
Özellik 1.5) Longitude adlı sütunu işleyin : bütün ”E” ve ”W” harflerini silin. Sadece sayısal character’ler kalmalıdır.
Özellik 1.6) Year adlı sütunu işleyin : bütün ”AD”  harflerini silin. Sadece sayısal character’ler kalmalıdır. Sonra bu sütunu numeric tipe çevirin.
Özellik 1.7) Longitude ve Latitude adlı sütunları işleyin : bütün character’leri numeric tipe çevirin.
Özellik 1.8 Year adlı sütundaki sayısal verileri kullanarak histogram çizin. Bin sayısını 10 olarak belirleyin.
Özellik 1.9)  Longitude adlı sütünu işleyin : idx değişkeninde adı geçen satırların değerleri -1 ile çarpın
Özellik 1.10 ) Sadece Longitude, Latitude ve Year adlı sütunlardan oluşan yeni bir data.frame yapın ve bu değişkene finalResult ismini verin.

Not : yapılan bütün işlemlerde sonuçlar tekrar aynı data.frame değişkeninde tutulacaktır.  
Not : yapılan işlemlerde for/while gibi loop kullanmak yasaktır. Kullanılması durumunda söz konusu soru için 0 puan verilecektir.

Not : Sunacağınız hiçbir R script dosyasında geliştirme yaptığınız makinaya ait dosya/dizin yolu (“c:/users/mustafa/….” g’b’ ) bulunmayacaktır. Zaten bulunursa testleriniz benim ya da GitHub DevOps testlerinde çalışmaz. Her zaman göreceli dosya yolu (relative path) kullanmanız gereklidir.
Not: Yazdığınız R script'lerinin içinde bu aşamada hiçbir paket kuran install.packages() konsiyonu bulunmamalı. Bu komutu sadece bir kere çalıştığınız bilgisayarda elle (R komut satırında) kullanacaksınız. R script'lerinizde sadece paket yükleyen library() komutları olmalıdır.

Bu işlemlerin kodlarını bir adet R script dosyasına yazın. Dosyanın adı Labex1_Q1_studentnumber_surname_familyname.R olmalıdır (küçük harflerle). Dosya isminin bu standarda uymaması durumunda otomatik notlandırma sistemi doğrudan bütün Lab egzersizi için size 0 puan verecektir.

Q2 : Test yazımı [20 puan] 
Aşağıdaki testleri testthat adlı paketi kullanarak yazın :
 
2.1) Labex1_Q1_tests_studentnumber_surname_familyname.R adlı bir dosya yaratın. Aşağıdaki etaplar için gereken bütün kodları bu dosya içine yazacaksınız.

2.2)  Ön hazırlık : Workspace’deki bütün değişkenleri silen kod yazın. Eğer mevcut ise MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosyayı silen kod yazın.

2.3) Source .R file you want to test : Bir önceki etapta yarattığınız dosyayı (Labex1_Q1_studentnumber_surname_familyname.R) çalıştırn. Bu soru için yazılacak kod tek satırlık, bu işi gören bir fonksiyon çağıran bir kod olacaktır.  

Not : Aşağıda istenilen testleri yazarken kullanılacak format :

test_that(""Data frame nesnesinin ismi ‘maps’ olmalıdır"", {
  testthat::expect***()
})
test_that("Data frame nesnesinin boyutları c(10,9) olmalıdır", {
…
})

Not : Aşağıda yazacağınız testler, otomatik notlandırma sistemi tarafından aşağıdaki kod çalıştırılarak değerlendirilecektir : testthat::test_file(“Labex1_Q1_studentnumber_surname_familyname.R”) 
Dolayısıyla siz de yazdığınız her yeni test için bu kodu çalıştırıp testlerinizin doğu iş gördüğünden emin olun.

2.4) Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur.
2.5) Test : maps adlı değiken Global Workspace’de mevcuttur.
2.6) Test : maps nesnesi bir data.frame’dir.
2.7) Test : maps adlı data.frame’in ilk sütunun adı “City” olmalıdır.
2.8) Test : maps adlı data.frame’in 5. sütunun adında “Title” kelimesi geçmelidir.
2.9) Test : Latitude adlı sütün numeric değerlerden oluşmalıdır.
2.10) Test : Longitude adlı sütün numeric değerlerden oluşmalıdır.
2.11) Test : idx nesnesi Global Workspace’de mevcuttur.
2.12) Test : idx nesnesinin tipi (class’ı) integer’dir.
2.13) Test : Year adlı adlı sütün numeric değerlerden oluşmalıdır.
2.14) Test : BONUS Longitude adlı sütunun 3.,  9. ve 10. elementleri negatif numeric değerler içermelidir.
2.15) Test : BONUS finalResult adlı değiken vardır, bir data.frame’dir, 3 sütundan oluşmalıdır ve sütün isimleri sırasıyla Longitude, Latitude ve Year olmalıdır.

Q3 : GitHub’a Çevik prensiplerine uygun kod gönderimi [60 puan] 
3.1) https://github.com/CevikYazilim/Vize adlı public repo’yu kendi kişisel GitHub hesabınıza forklayın. Sonra forklanmış projenizi kendi bilgisayarınıza clone’layın.

3.2) Q1 ve Q2 için yarattığınız iki .R uzantılı dosyayı, bu repo dizinin içinde yaratacağınız studentnumber adlı alt dizinin içine kopyalayın. Alt dizinin adı öğrenci numaranız olmalıdır. 

3.3) Klonlamış olan reponun main adlı git branch’ını baz alarak studentnumber_1_1 adlı yeni bir git branch yaratın. Bu branch içinde Q1 1.1’de istenilen işlemleri yapın, testlerini yazın. Bitince de GitHub’a,  studentnumber_1_1 adlı branch’e push edin. main adlı branch’e push edemezsiniz, o branch koruma altındadır.

3.4) Q1’deki bütün etapları birer yazılım özelliği olarak kabul edip, her bir özellik bittiğinde, ilgili testleri ile beraber, tek bir commit başlığı altında local git’inize commitleyin. Commit mesajı şu standarda uygun olmalıdır : “1.x, testleri ile tamamlandı”.

3.5) Her özellik için yapacağınız her commit’i, bir sonraki özelliğe geçmeden önce 

Eğer bir şekilde main adlı branch’e push etmeyi başarırsanız bütün sınavdan 0 notu alacaksınz.

3.6) Kendi  studentnumber_1_1 adlı branch’ınızdan dev adlı branch’e bir Pull Request gönderin. Otomatik notlandırma sistemi yaratacağınız pull request’leri, branch isimlerini analiz edecektir. O yüzden aşağıdaki bölümleri doğru yapmaz iseniz Q3’e otomatik olarak sistem tarafından 0 puan verilecektir.
İşlem sırası :
Benim boş GitHub repomu kendi kişisel GitHub reponuza forklayın
Kendi reponuzdan local makinenize repoyu klonlayın
Klonlanan reponun main branch’ını baz alarak studentnumber_1_1 adlı bir git branch’ı yaratın (burada kendi öğrenci numaranızı kullanacaksınız)
Yeni bir alt dizin yaratın, ismi studentnumber olsun
Bu dizin içinde Labex1_Q1_studentnumber_surname_familyname.R adlı bir dosya yaratın
Bu dosya içine Özellik 1.1’i çözen kodu yazın
Yine aynı alt dizin içinde Labex1_Q1_tests_studentnumber_surname_familyname.R adlı bir dosya yaratın
Bu dosya içinde testthat kütüphanesini yükleyen, Global Workspace’i temizleyen ve esas kod script’ini çalıştıran komutları ekleyin.
Bu dosya içine Özellik 1.1’in test(ler)ini yazın
test_file() komutunu R komut satırında elle çalıştırarak bütün testlerin başarı ile geçtiğini teyit edin
Sadece ve sadece bütün testler başarı ile geçtiyse, özellik 1.1 kodu ve testini 3.4’deki commit mesajı kuralını uygulayarak commit leyin 
Sadece ve sadece çalışmakta olduğunuz studentnumber_1_1 adlı branch’ı kendi GitHub remote reponuza push’layın
GitHub.com adresindeki reponuzdan sadece ve sadece bu sözkonusu commit için benim repomdaki dev branch’ine pull request gönderin
Lokal makinanızda studentnumber_1_1 main branch’ını baz alarak studentnumber_1_2 adlı bir git branch’ı yaratın
Özellik 1_2 ile devam edin. Bütün iş bittiğinde benim çözümlemem gereken birçok pull request göndermiş olacaksınız.
