{ ... }:
{
  boot.kernelModules = [
    "iptable_nat"
    "ip6table_nat"
  ];
  networking.firewall.allowedTCPPorts = [ 51821 ];
  networking.firewall.allowedUDPPorts = [ 51820 ];
}
