#! /bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd

your_name="Joel Robertson"

sudo tee /var/www/html/index.html > /dev/null <<EOF
<h1>Welcome to $your_name Website from \$(hostname -f)</h1>
EOF

sudo mkdir -p /var/www/html/app1

sudo tee /var/www/html/app1/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<body style="background-color:rgb(250, 210, 210);">
  <h1>Welcome to $your_name Website from \$(hostname -f)!</h1>
  <p>Ec2 Demo</p>
  <p>Application Version: V1</p>
</body>
</html>
EOF

