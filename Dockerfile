#Base Image
FROM node:21-alpine

RUN apk add procps

# Install MySQL client
RUN apk add mysql-client


# Set Working Directory
WORKDIR /app

# Copy Package Files
COPY package*.json ./  

RUN npm install -g pnpm
# Install Dependencies 
RUN pnpm install  # Install only production dependencies for efficiency

# Copy Project Files
COPY . .

# Cant run here as we need MySQL to be up Run Prisma Migrations and Generate Client
# RUN npx prisma migrate dev --name init
# RUN npx prisma generate


# Build Nuxt Application
RUN npm run build

CMD [ "node", ".output/server/index.mjs" ]
