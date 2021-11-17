FROM python:3

WORKDIR /usr/src/app

COPY ../../Desktop/Miney/Python/shared/TestProjectOnUbuntaDeploy/req.txt .
COPY entrypoint.sh .
RUN pip install -r req.txt
RUN chmod +x entrypoint.sh

COPY ../../Desktop/Miney/Python/shared/TestProjectOnUbuntaDeploy .

ENTRYPOINT["/usr/src/app/entrypoint.sh"]
