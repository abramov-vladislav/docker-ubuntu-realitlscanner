# Указываем, что образ должен поддерживать несколько платформ (windows и macos)
FROM ubuntu:24.04

# Устанавливаем необходимые пакеты
RUN apt update && apt install -y \
    golang-1.21-go \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем рабочую директорию
WORKDIR /app

# Клонируем репозиторий
RUN git clone https://github.com/abramov-vladislav/RealiTLScanner.git

# Переходим в директорию с проектом
WORKDIR /app/RealiTLScanner

# Загружаем зависимости Go
RUN go mod tidy

# Собираем проект
RUN go build

# Делаем исполнимым файл
RUN chmod +x RealiTLScanner

# Скачиваем файл Country.mmdb
RUN wget https://github.com/Loyalsoldier/geoip/releases/latest/download/Country.mmdb
