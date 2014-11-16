NAME=getdatagen
FLASKDIR=/opt/getdatagen
USER=root
GROUP=root
NUM_WORKERS=1

cd /opt

# Start your unicorn
gunicorn getdatagen:app -b 0.0.0.0:8888 \
  --name $NAME \
  --workers $NUM_WORKERS \
  --user=$USER --group=$GROUP \
  --log-level=debug
