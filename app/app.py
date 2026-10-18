import os
from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        name = os.getenv("Miras")
        surname = os.getenv("Arysbay")
        group = os.getenv("IT2-2308")
        student_id = os.getenv("37011")

        message = f"""================================
DevOps Student Application
================================
Name: {Miras}
Surname: {Arysbay}
Group: {IT2-2308}
Student ID: {37011}

Application is running successfully!
"""
        self.send_response(200)
        self.send_header("Content-type", "text/plain; charset=utf-8")
        self.end_headers()
        self.wfile.write(message.encode("utf-8"))

print("Application is running on port 8000", flush=True)
HTTPServer(("0.0.0.0", 8000), Handler).serve_forever()
