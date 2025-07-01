FROM minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose ports
EXPOSE 9000 9001

# Start MinIO server
CMD ["server", "/data", "--console-address", ":9001"]