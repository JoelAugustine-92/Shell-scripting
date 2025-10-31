print("Udp server")
import socket
server_socket=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
server_socket.bind(('localhost',12345))
print("Server is listening on 12345....")
data,addr=server_socket.recvfrom(1024)
print("The recieved client request \n",data.decode())
server_socket.sendto("do u have it".encode(),addr)
server_socket.close()
