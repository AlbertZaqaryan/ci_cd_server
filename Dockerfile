# Используем Python 3.11 slim
FROM python:3.11-slim

# Рабочая директория
WORKDIR /app

# Копируем файлы
COPY requirements.txt .
COPY app.py .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт 5000
EXPOSE 5000

# Команда запуска
CMD ["python", "app.py"]