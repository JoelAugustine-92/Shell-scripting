import socket
server_socket=socket.socket(socket.AF_INET,socket. SOCK_STREAM)
server_socket.bind(('localhost',12345))
server_socket.listen(1)
print("server is listening")
conn,addr=server_socket.accept()
data=conn.recv(1024).decode()
print("Received details: \t",data)
conn.send("the message is ".encode())
conn.close()

