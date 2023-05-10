# Sync-Jam-dengan-Bug / IP Modem
1. Auto synchronize jam openwrt dengan bug
2. Restart tunnel
   - Openclash
   - Passwall
3. Pengaturan jam mengikuti system yg tersetting di openwrt
4. Bisa sync jam dengan ip modem
# Cara Pemakaian
1. install dulu file pendukung
   ```
   opkg update && opkg install curl wget
   ```
2. paste command dibawah ini untuk menginstall script jam.sh
   ```
   wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/install.sh" -O /tmp/install.sh && chmod +x /tmp/install.sh && sh /tmp/install.sh
   ```
3. cara pemakaian di ``jam.sh`` ketikan domain yang sudah di cari tadi di belakang ``jam.sh`` contoh ``jam.sh domain.com``
  
4. masukan di ``rc.local`` atau ``luci -> system - startup - local``
   ```
   sh /sbin/jam.sh google.com
   ```
5. jika ingin melakukan restart tunnel dengan ``jam.sh`` dan sebelum nya ada pengecekan dulu koneksi dari ``modem`` ke ``bug`` yg dituju di crontabs ketikan di ``luci->system->schedule task``
   ```
   * */6 * * * sh /sbin/ping.sh google.com
   ```
   ini artinya setiap 6 jam sekali ``ping.sh`` dijalanin untuk mengecek koneksi internet jika tidak ada replya maka ``jam.sh`` dijalankan restart tunnel
6. Untuk mencari domain bug yang cocok silahkan ketik dulu di terminal ``curl -i www.bugdomain.com`` atau ``curl -i www.bugdomain.com:443`` atau bug ip ``curl -i bug_ip:443``
   ex : ``curl -i time.google.com`` lihat jika ada respon date maka domain tersebut bisa dipakai
   ![image](https://user-images.githubusercontent.com/92195275/207335985-73199713-f1fd-4758-9ac5-d66a42966926.png)
   
7. Untuk pengguna ``Openclash`` ada pengaturan khusus ``config`` ``terminal``
   di config terminal di device nya pilih utun
   NB: TERMINAL OPENWRT TIDAK AKAN BISA DIGUNAKAN, JADI GUNAKAN PUTTY atau JUICESSH

   
   
# Developer
1. alknanet
2. vito harhari
3. helmi amirudin
