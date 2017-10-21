require 'packetfu'

# iface becomes the default routeable interface
iface = PacketFu::Utils.default_int

# cap starts capturing packets on iface
cap = PacketFu::Capture.new(:iface => iface, :start => true)

# will parse packets providing summary data of packet contents
cap.stream.each do | packet |
  puts PacketFu::Packet.parse(packet).peek
end