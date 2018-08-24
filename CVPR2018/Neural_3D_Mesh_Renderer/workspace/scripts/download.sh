#!/bin/bash

. /root/scripts/google_drive.sh

download_from_google_drive 1fY9IWK7yEfLOmS3wUgeXM3NIivhoGhsg mesh_reconstruction_dataset.zip
unzip mesh_reconstruction_dataset.zip
mv mesh_reconstruction ../mesh_reconstruction/data/dataset
rm mesh_reconstruction_dataset.zip

download_from_google_drive 1tRHQoc0VWpj61PM1tVozIFwrFsDpKbTQ mesh_reconstruction_models.zip
unzip mesh_reconstruction_models.zip -d ../mesh_reconstruction/data
rm mesh_reconstruction_models.zip

