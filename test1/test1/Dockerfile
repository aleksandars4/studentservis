# Faza 1: Restore
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS restore
WORKDIR /app

COPY test1.csproj .
RUN dotnet restore

# Faza 2: Build
FROM restore AS build
WORKDIR /app

COPY . .
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       curl \
    && curl -o /tmp/unzip.zip https://busybox.net/downloads/binaries/1.31.0-i686-uclibc/unzip \
    && unzip -q /tmp/unzip.zip -d /usr/local/bin \
    && rm /tmp/unzip.zip \
    && dotnet build -c Release --no-restore

# Faza 3: Finalna slika
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final
WORKDIR /app
COPY --from=build /app/bin/Release/net6.0/publish .

ENTRYPOINT ["dotnet", "test1.dll"]