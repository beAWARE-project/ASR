FROM openjdk:8

COPY target/asr.jar /home

COPY resources/acoustic_models/ /home/acoustic_models
#COPY resources/jave-1.0.2.jar   /home/resources/

WORKDIR  /home/acoustic_models/Spanish/cmu_spanish/

RUN wget -O es-20k.lm  https://beaware-1.eu-de.containers.appdomain.cloud/object-store/es-20k.lm
RUN wget -O es-20k_expanded5b.lm  https://beaware-1.eu-de.containers.appdomain.cloud/object-store/es-20k_expanded5b.lm

WORKDIR /home

CMD ["java", "-jar", "asr.jar"]
