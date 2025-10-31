print("udp client")
import socket
clientserver_socket=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
server_socket_address=('localhost',12345)
clientserver_socket.sendto("yes i have it".encode(),server_socket_address)
print("client server is active !")
data,_=clientserver_socket.recvfrom(1024)
print("yes i have it",data.decode())

clientserver_socket.close()
