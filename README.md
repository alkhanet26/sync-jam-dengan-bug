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
   wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/jam.sh" -O /sbin/jam.sh && chmod +x /sbin/jam.sh
   ```
3. buka ``file browser`` via luci atau ``winscp`` di folder ``"/sbin/jam.sh"``
4. ganti bug ``www.domain.com`` nya sesuai paket atau dengan ``ip modem`` kalian
   Cari tulisan ``curl -i www.bugdomain.com``ganti ``www.bugdomain.com`` dengan bug paket yang sesuai dengan isp
   kalau menggunakan 0p0k dibekalang domain diberi port ex: ``www.bugdomain.com:443``
  
5. masukan di ``rc.local`` atau ``luci -> system - startup - local``
   ```
   sh /sbin/jam.sh
   ```
6. jika ingin melakukan restart tunnel dengan ``jam.sh`` di crontabs ketikan di ``luci->system->schedule task``
   ```
   * */6 * * * sh /sbin/jam.sh
   ```
   ini artinya setiap 6 jam sekali ``jam.sh`` dijalanin untuk restart tunnel
7. Untuk mencari domain bug yang cocok silahkan ketik dulu di terminal ``curl -i www.bugdomain.com`` atau ``curl -i www.bugdomain.com:443``
   ex : ``curl -i time.google.com`` lihat jika ada respon date maka domain tersebut bisa dipakai
   ![image](https://user-images.githubusercontent.com/92195275/207335985-73199713-f1fd-4758-9ac5-d66a42966926.png)

   
   
# Developer
1. alknanet
2. vito harhari
3. helmi amirudin
