use eticaret
select kategori.adi,urun.adi,urun.fiyati,sepet.adet,urunozellik.deger,uye.adi,uye.soyadi
from kategori,kategoriozellik,sepet,siparis,siparisdetay,urun,urunozellik,uye
where kategori.ustkategoriid = urun.kategoriid
and kategori.ustkategoriid = kategoriozellik.kategoriid
and urun.id = sepet.urunid
and sepet.uyeid = uye.id
and uye.id = siparis.uyeid
and siparis.id = siparisdetay.id
and siparisdetay.urunid = urun.id
and urun.id = urunozellik.urunid
and urunozellik.kategorozellikid = kategoriozellik.kategoriid
and kategori.id = kategoriozellik.kategoriid