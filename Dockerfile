FROM python:2
WORKDIR /app
RUN pip install numpy scipy matplotlib
COPY . .
RUN chmod -R +x /app
