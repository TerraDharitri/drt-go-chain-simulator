FROM golang:1.23.6 AS builder


WORKDIR /terradharitri
COPY . .

RUN go mod tidy

WORKDIR /terradharitri/cmd/chainsimulator

RUN go build -o chainsimulator

RUN mkdir -p /lib_amd64 /lib_arm64

RUN cp $(go list -m -f '{{.Dir}}' github.com/TerraDharitri/drt-chain-vm-v)/wasmer/libwasmer_linux_amd64.so /lib_amd64/
RUN cp $(go list -m -f '{{.Dir}}' github.com/TerraDharitri/drt-chain-vm-v)/wasmer2/libvmexeccapi.so /lib_amd64/

RUN cp $(go list -m -f '{{.Dir}}' github.com/TerraDharitri/drt-chain-vm-v)/wasmer/libwasmer_linux_arm64_shim.so /lib_arm64/
RUN cp $(go list -m -f '{{.Dir}}' github.com/TerraDharitri/drt-chain-vm-v)/wasmer2/libvmexeccapi_arm.so /lib_arm64/


FROM ubuntu:22.04
ARG TARGETARCH
RUN apt-get update && apt-get install -y git curl

COPY --from=builder /terradharitri/cmd/chainsimulator /terradharitri

EXPOSE 8085

WORKDIR /terradharitri

# Copy architecture-specific files
COPY --from=builder "/lib_${TARGETARCH}/*" "/lib/"

CMD ["/bin/bash"]

ENTRYPOINT ["./chainsimulator"]


