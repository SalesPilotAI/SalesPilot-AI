# SalesPilot AI

AI Sales Assistant для малого бизнеса. Сервер хранит данные аккаунтов раздельно, а OpenAI API вызывается только на сервере.

## Локальный запуск

1. Создайте `.env.local` по примеру `.env.example` и добавьте `OPENAI_API_KEY`.
2. Запустите `node server.js`.
3. Откройте `http://localhost:5173`.

## Публикация

GitHub Pages не подходит для этой версии: ему недоступен Node.js-сервер и нельзя безопасно хранить API-ключ. Используйте Docker/Render: файл `render.yaml` создаёт web service, а секрет `OPENAI_API_KEY` добавляется в панели хостинга.

Для ответов AI нужен положительный API-баланс OpenAI. Никогда не добавляйте `.env.local` или папку `data/` в Git.
