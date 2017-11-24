FROM openjdk:8
	
COPY resources/acoustic_models .

COPY target/ASR-jar-with-dependencies.jar .
	
WORKDIR .

CMD ["java", "-jar", "asr.jar"]

