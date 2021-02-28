FROM elasticsearch:7.1.1 

# 下載安裝 ik plugin
RUN  sh -c '/bin/echo -e "y" |  ./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.1.1/elasticsearch-analysis-ik-7.1.1.zip '

EXPOSE 9300 9200


