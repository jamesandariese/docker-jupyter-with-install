FROM jupyter/pyspark-notebook

ADD strudel-start.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/strudel-start.sh

CMD ["strudel-startup.sh"]
