FROM node:18-bullseye-slim

# 1. Install System Dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    libnss3 \
    libnspr4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 2. Install Node Modules
COPY package.json package-lock.json* ./
RUN npm install

# 3. Build Next.js
COPY . .
RUN npm run build

# 4. FIX PERMISSIONS (Crucial Step)
# Give the 'node' user ownership of the app folder so it can write to .next
RUN chown -R node:node /app

# 5. Switch to User
USER node

ENV PORT=7860
EXPOSE 7860

# 6. Start the Custom Server
CMD ["node", "server.js"]
