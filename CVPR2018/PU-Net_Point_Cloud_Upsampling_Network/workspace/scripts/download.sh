#!/bin/bash

PROJECT=/root/workspace/PU-Net

. /root/scripts/google_drive.sh

download_from_google_drive 1te8d1y2BTFBL_3CB1jpqbOFzkkjvtKsE Patches_noHole_and_collected.h5
mv Patches_noHole_and_collected.h5 ${PROJECT}/h5_data

download_from_google_drive 1c1oYNwIzKxCOF_6bqm3HmwYcCZv1230Z generator2_new6.zip
unzip generator2_new6.zip -d ${PROJECT}/model
rm generator2_new6.zip

download_from_google_drive 1lp2HWU78tx_-tz8cxE8PSxb-M7ZQCMOq our_collected_data.zip
unzip our_collected_data.zip -d ${PROJECT}
rm our_collected_data.zip

