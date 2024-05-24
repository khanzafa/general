from netmiko import ConnectHandler, NetmikoTimeoutException, NetmikoAuthenticationException

# Definisikan perangkat
mikrotik_router = {
    'device_type': 'mikrotik_routeros',
    'host': '192.168.56.1',
    'username': 'admin',
    'password': 'admin',
    'port': 22,
    'secret': '',
}

try:
    # Membuat koneksi SSH
    net_connect = ConnectHandler(**mikrotik_router)
    
    # Jalankan beberapa perintah
    output = net_connect.send_command('/ip address print')
    print(output)
    
    # Kirim konfigurasi baru
    config_commands = [
        '/interface bridge add name=bridge1',
        '/interface bridge port add bridge=bridge1 interface=ether1',
        '/ip address add address=10.0.0.1/24 interface=bridge1',
    ]
    net_connect.send_config_set(config_commands)
    
    # Verifikasi konfigurasi
    output = net_connect.send_command('/ip address print')
    print(output)
    
    # Tutup koneksi
    net_connect.disconnect()

except NetmikoTimeoutException:
    print("Connection timed out. Please check the IP address and port.")
except NetmikoAuthenticationException:
    print("Authentication failed. Please check the username and password.")
except Exception as e:
    print(f"An error occurred: {e}")
