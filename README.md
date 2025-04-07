# TheSmallestLittleThing

## Description

Can we make the smallest little program ?

It's supposed to be a simple program that counts from 1 to 10000 in assembly language. It's also supposed to have a final size of 5KB.

## Usage (Linux)

Made for x86-64 Linux. To compile and run:

```bash
./build_run.sh
```

## Usage Docker

```bash
docker build . -t wiibleyde/smallthing:latest
docker run --rm -it wiibleyde/smallthing:latest
```
