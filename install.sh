#!/bin/bash

# Periksa apakah skrip dijalankan oleh root
if [ "$EUID" -ne 0 ]; then
  echo "Harap jalankan skrip ini sebagai root."
  exit 1
fi

# Memeriksa apakah nama pengguna diberikan sebagai argumen
if [ -z "$1" ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME=$1

# Memeriksa apakah PostgreSQL sudah terinstal
if ! command -v psql &> /dev/null; then
  echo "PostgreSQL belum terinstal. Menginstal PostgreSQL..."
  
  # Update package list dan install PostgreSQL
  apt-get update -y
  apt-get install postgresql postgresql-contrib -y
  
  echo "PostgreSQL telah berhasil diinstal."
else
  echo "PostgreSQL sudah terinstal."
fi

# Memeriksa apakah pengguna sudah ada di sistem
if id "$USERNAME" &>/dev/null; then
  echo "Memperbarui pengaturan untuk $USERNAME..."

  # Menambahkan pengguna ke grup sudo
  usermod -aG sudo $USERNAME

  echo "Pengaturan untuk $USERNAME telah berhasil diperbarui."
else
  echo "Pengguna $USERNAME tidak ditemukan."
  exit 1
fi
