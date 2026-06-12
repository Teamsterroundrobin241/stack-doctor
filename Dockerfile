FROM python:3.12-slim

LABEL org.opencontainers.image.title="stack-doctor" \
      org.opencontainers.image.description="Auto-detect and fix recurring Sonarr/Radarr stuck-queue issues (cron or webhook)" \
      org.opencontainers.image.source="https://github.com/Neoo-Blue/stack-doctor" \
      org.opencontainers.image.licenses="MIT"

ENV PYTHONUNBUFFERED=1 \
    DOCTOR_STATE_FILE=/data/state.json

WORKDIR /app
COPY doctor.py /app/doctor.py

# no third-party dependencies (Python standard library only)
RUN useradd -r -u 1000 doctor && mkdir -p /data && chown doctor:doctor /data
VOLUME /data
USER doctor

# webhook port (event mode)
EXPOSE 8088

ENTRYPOINT ["python3", "/app/doctor.py"]
