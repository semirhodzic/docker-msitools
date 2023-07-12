FROM bitnami/minideb:latest

WORKDIR /app

RUN install_packages msitools wixl

COPY . .

CMD /bin/bash -c 'if [ -z "$INPUT_FILE" ] || [ -z "$OUTPUT_FILE" ]; then echo "INPUT_FILE and OUTPUT_FILE must be set" && exit 1; else wixl -v -o $OUTPUT_FILE $INPUT_FILE; fi'