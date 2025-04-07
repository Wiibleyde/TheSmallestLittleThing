# Stage 1: Build stage
FROM debian:11-slim AS builder

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    nasm \
    binutils \
    python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN chmod +x build_run.sh

RUN ./build_run.sh

FROM scratch

COPY --from=builder /app/main /app/main

CMD ["/app/main"]