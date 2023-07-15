wget https://cdn.geekbench.com/Geekbench-6.1.0-Linux.tar.gz
tar -xvf Geekbench-6.1.0-Linux.tar.gz
cd Geekbench-6.1.0-Linux/
chmod a+x geekbench_x86_64
chmod a+x geekbench6
chmod a+x geekbench_avx2
./geekbench6 --cpu
./geekbench6 --gpu