FROM node:20-alpine AS build
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY client/package.json client/package-lock.json ./client/
RUN npm ci --prefix client
COPY client/ ./client/
RUN npm run build --prefix client

COPY server/package.json server/package-lock.json ./server/
RUN npm ci --prefix server --omit=dev
COPY server/ ./server/

FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production PORT=5001

COPY --from=build /app/package.json ./package.json
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/server ./server
COPY --from=build /app/client/package.json ./client/package.json
COPY --from=build /app/client/node_modules ./client/node_modules
COPY --from=build /app/client/dist ./client/dist
COPY --from=build /app/client/vite.config.js ./client/vite.config.js

EXPOSE 5173 5001
CMD ["./node_modules/.bin/concurrently", "--kill-others", "npm start --prefix server", "npm run preview --prefix client -- --host 0.0.0.0 --port 5173 --strictPort"]
