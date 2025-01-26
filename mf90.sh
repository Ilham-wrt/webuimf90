#!/bin/bash

# Warna ANSI
GREEN='\e[32m'
YELLOW='\e[33m'
RED='\e[31m'

# Mengekstrak file webui.zip
unzip webui.zip 
unzip webui

# Menampilkan pilihan utama kepada pengguna
while true; do
 echo -e "${GREEN}Mohon di baca"
  echo -e "${RED}Mengganti Webui pada mf90 memiliki kemungkinan erorwalau kecil, Kami Tidka BErtanggung jawab jika ada kesalhan, Silahkan Mencoba "
   echo -e "${YELLOW}Semua TAmpilan WebUi kami Mbil Dari www.reload.id"
    echo -e "${YELLOW}Pilih opsi:"
    echo -e "${GREEN}1. Install WebUI"
    echo -e "${GREEN}2. Undo WebUI"
    echo -e "${RED}3. Exit"
    echo -n -e "${YELLOW}Masukkan pilihan (1/2/3): "
    read pilihan

    case $pilihan in
        1)
            # Pilihan Install WebUI
            echo -e "${GREEN}Anda memilih untuk menginstall WebUI..."
            echo -e "${YELLOW}Pilih versi WebUI:"
            echo -e "${GREEN}1. Beline kunig nodif ala ala  Biru"
            echo -e "${GREEN}2. Beline kuning"
            echo -e "${GREEN}3. mf90+"
            echo -e "${GREEN}4. mf90reload.id"
            echo -e "${GREEN}5. tele2"
            echo -e "${GREEN}6. mf90DNA"
            echo -n -e "${YELLOW}Masukkan pilihan (1/2/3/4/5/6): "
            read webui_choice

            case $webui_choice in
                1)
                    echo -e "${GREEN}Anda memilih Beline Biru untuk diinstall."
                   adb devices
                adb push biru.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/biru.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                2)
                    echo -e "${GREEN}Anda memilih Beline untuk diinstall."
                                     adb devices
                adb push beline.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/beline.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                3)
                    echo -e "${GREEN}Anda memilih mf90+ untuk diinstall."
                                     adb devices
                adb push mf900.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/mf900.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                4)
                    echo -e "${GREEN}Anda memilih mf90reload.id untuk diinstall."
                                     adb devices
                adb push reloadid.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/reloadid.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                5)
                    echo -e "${GREEN}Anda memilih tele2 untuk diinstall."
                                     adb devices
                adb push tele2.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/tele2.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                6)
                    echo -e "${GREEN}Anda memilih mf90DNA untuk diinstall."
                                    adb devices
                adb push dna.zip /zte/zteconf
                adb shell rm /zte/zteconf/web -r
                adb shell cd /zte/zteconf
                adb shell unzip -o /zte/zteconf/dna.zip -d /zte/zteconf
                 echo -e "${GREEN}Install Berhasil Modem sedang reboot."
                    ;;
                *)
                    echo -e "${RED}Pilihan tidak valid. Kembali ke menu utama."
                    ;;
            esac
            ;;

        2)
            # Pilihan Undo WebUI
            echo -e "${GREEN}Anda memilih untuk melakukan Undo WebUI..."
            adb shell rm -rf /zte/zteconf/web
            adb shell mv /zte/zteconf/web.bak zte/zteconf/web
            adb shell reboot
            echo -e "${GREEN}Undo WebUI selesai!"
            ;;

        3)
            # Pilihan Exit
            echo -e "${RED}Keluar dari program."
            exit 0
            ;;

        *)
            echo -e "${RED}Pilihan tidak valid. Silakan pilih lagi."
            ;;
    esac
done
