import socket
client_socket=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
client_socket.connect(('localhost',12345))
print("client server is listening")
client_socket.send("are u listening".encode())
data=client_socket.recv(1024).decode()
print("what i have received",data)
client_socket.close()
