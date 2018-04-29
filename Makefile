CC=g++
CPPFLAGS=-std=c++11 -Wextra

all:pds-dhcpstarve pds-dhcprogue
pds-dhcpstarve: pds-dhcpstarve.cpp
	$(CC) $(CPPFLAGS) pds-dhcpstarve.cpp packet-manager.cpp address_manager.cpp -o pds-dhcpstarve -lpcap -pthread

pds-dhcprogue: pds-dhcprogue.cpp
	$(CC) $(CPPFLAGS) pds-dhcprogue.cpp packet-manager.cpp address_manager.cpp -o pds-dhcprogue -lpcap -pthread

clean:
	rm -f pds-dhcpstarve pds-dhcprogue

