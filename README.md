# pi-sdn

## Usage

Download the compiled binary from the Releases tab.

    wget 'https://github.com/philcrump/pi-sdn/releases/download/v1.0/pi-sdn' -O /home/pi/pi-sdn

Add the following command to /etc/rc.local, before 'exit 0'.

    sudo /home/pi/pi-sdn n x

*   'n' is the GPIO Number on which pi-sdn will trigger shutdown on a Rising Edge
*   'x' is the optional GPIO Number on which pi-sdn will output constant 3.3V
    *    A complete shutdown can be detected by a transition to High-Z on this pin.
    *    A pull-down resistor or LED can be used to cause a Falling Edge on complete shutdown.

### GPIO Number

pi-sdn uses the WiringPi pin numbers (0-20)

The pinout can be found at http://wiringpi.com/pins/

## Compile from source

Clone the git repository

    cd ~/
    git clone https://github.com/philcrump/pi-sdn.git pi-sdn-git/
    cd pi-sdn-git/

Compile and install wiringPi with static headers

    git submodule update --init
    cd wiringPi/
    ./build
    cd wiringPi/
    make static
    sudo make install-static

Compile pi-sdn

    cd ~/pi-sdn-git/
    make
    cp pi-sdn ~/pi-sdn

## Authors

Copyright (c) 2015 Phil Crump <phil@philcrump.co.uk>
