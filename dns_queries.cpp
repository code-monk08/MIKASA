
#include <tins/tins.h>
#include <iostream>

using std::cout;
using std::endl;

using namespace Tins;

bool callback(const PDU& pdu) {
    // The packet probably looks like this:
    //
    // EthernetII / IP / UDP / RawPDU
    //
    // So we retrieve the RawPDU layer, and construct a 
    // DNS PDU using its contents.
    DNS dns = pdu.rfind_pdu<RawPDU>().to<DNS>();
    
    // Retrieve the queries and print the domain name:
    for (const auto& query : dns.queries()) {
        cout << query.dname() << std::endl;
    }
    return true;
}

int main(int argc, char* argv[]) {
    if(argc != 2) {
        cout << "Usage: " <<* argv << " <interface>" << endl;
        return 1;
    }
    // Sniff on the provided interface in promiscuous mode
    SnifferConfiguration config;
    config.set_promisc_mode(true);
    // Only capture udp packets sent to port 53
    config.set_filter("udp and dst port 53");
    Sniffer sniffer(argv[1], config);
    
    // Start the capture
    sniffer.sniff_loop(callback);
}
