# Use official Ruby image as parent
FROM ruby:latest

# Working directory in the container
WORKDIR /app

# Copy ruby code in container
COPY caesar_cipher.rb /app/caesar_cipher.rb

# Command to execute ruby script
CMD ["ruby", "caesar_cipher.rb"]