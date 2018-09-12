FROM python:3.6
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
COPY . /app
RUN pip install git+https://gitee.com/maiff/supervisor.git
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  cron && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

RUN pip install -r /app/requirements.txt
COPY ./cronfile /etc/cron.d/
RUN chmod 777 /app/entrypoint.sh && chmod 777 /etc/cron.d/cronfile
ENTRYPOINT ["/app/entrypoint.sh"]

EXPOSE 9001