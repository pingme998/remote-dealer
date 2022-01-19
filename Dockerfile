FROM pingme998/remote-dealer
RUN apt update -y
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh
