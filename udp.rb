require 'socket'

# udp = UDPSocket.new
# udp.connect("127.0.0.1", 5001)
# udp.send "ruby udp", 0

tcp = TCPSocket.new("127.0.0.1", 5000)
tcp.puts 'GETHELLO'
