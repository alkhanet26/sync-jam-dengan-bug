# sync-jam-dengan-bug
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
5. masukan di ``rc.local`` atau ``luci -> system - startup - local``
   ```
   sh /sbin/jam.sh
   ```
6. jika ingin melakukan restart tunnel dengan ``jam.sh`` di crontabs ketikan di ``luci->system->schedule task``
   ```
   * */6 * * * sh /sbin/jam.sh
   ```
# Developer
1. alknanet
2. vito harhari
3. helmi amirudin
