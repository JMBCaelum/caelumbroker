# caelumbroker installation
You may need to have installed the follwing packages:
- gcc 
- g++ 
- make 
- xsltproc 
- docbook-xsl 
- libwebsockets-dev 
- libmysqlclient-dev

In case not installed use the follwing command.

```bash
apt install gcc g++ make xsltproc docbook-xsl libwebsockets-dev libmysqlclient-dev
```

Clone the caelumbroker repository into a folder.

```bash
git clone <caelumbroker gitlab url>
cd caelumbroker
cd scripts
sudo ./install.sh
```

Restart the Linux environment 

Once restarted do:

```bash
sudo service caelumbroker start
```

You can see the service status by doing:

```bash
sudo service caelumbroker status
```

Stop the service doing:

```bash
sudo service caelumbroker stop
```