#!/bin/bash

echo "🗄️  Running database migrations..."
echo "Waiting for database to be ready..."
sleep 5

# Run Drizzle migrations inside the app container
docker compose exec app npx drizzle-kit push --config=drizzle.config.js

if [ $? -eq 0 ]; then
    echo "✅ Database migrations completed successfully!"
else
    echo "❌ Migration failed. Make sure the containers are running."
    echo "Run: docker compose up -d"
fi
