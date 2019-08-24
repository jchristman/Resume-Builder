FROM jpbernius/xelatex

RUN apt-get update; exit 0
RUN apt-get install 

RUN apt-get install -y wget unzip
RUN cd /tmp && wget http://mirrors.ctan.org/macros/latex/contrib/qrcode.zip && unzip qrcode.zip && cd qrcode && latex qrcode.ins && echo Making directory for qrcode package && mkdir -p /usr/local/share/texmf/text/latex/qrcode && cp qrcode.sty /usr/local/share/texmf/text/latex/qrcode && ls -al /usr/local/share/texmf/text/latex/qrcode && texhash && echo Job done