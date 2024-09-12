# Fungsi untuk menghitung total biaya proyek
function calculate_cost() {
    echo "Masukkan jumlah pengembang:" 
    read pekerja  

    echo "Masukkan gaji pekerja per bulan (dalam Rupiah):"
    read gaji_perkerja

    echo "Masukkan lama proyek (dalam bulan):"
    read durasi projek

    echo "Masukkan biaya server per bulan (dalam Rupiah):"
    read biaya server

    echo "Masukkan biaya lisensi software (dalam Rupiah):"
    read lisensi software

    echo "Masukkan biaya operasional lainnya (dalam Rupiah):"
    read biaya operasional

    echo "Masukkan anggaran awal proyek (dalam Rupiah):"
    read anggaran proyer

    total_salary=$((developers * salary_per_dev * project_duration))

    total_server_cost=$((server_cost * project_duration))

    total_cost=$((total_salary + total_server_cost + software_license + operational_cost))

    remaining_budget=$((project_budget - total_cost))

    echo "------------------------"
    echo "Total biaya gaji pengembang: Rp $total_salary"
    echo "Total biaya server: Rp $total_server_cost"
    echo "Total biaya lisensi software: Rp $software_license"
    echo "Total biaya operasional: Rp $operational_cost"
    echo "------------------------"
    echo "Total biaya keseluruhan proyek: Rp $total_cost"
    echo "Sisa anggaran: Rp $remaining_budget"

    if [ $remaining_budget -lt 0 ]; then
        echo "Proyek melebihi anggaran sebesar Rp ${remaining_budget#-}"
    else
        echo "Proyek dapat diselesaikan dengan anggaran."
    fi
}

calculate_cost