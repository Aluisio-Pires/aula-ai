-- Create databases
CREATE DATABASE evogo_auth;
CREATE DATABASE evogo_users;
CREATE DATABASE n8n;

-- Create n8n user and grant permissions
CREATE USER n8n WITH PASSWORD 'n8n_pass';
GRANT ALL PRIVILEGES ON DATABASE n8n TO n8n;

-- In PostgreSQL 15+, we need to explicitly grant CREATE on public schema
\c n8n
GRANT ALL ON SCHEMA public TO n8n;

\c evogo_auth
GRANT ALL ON SCHEMA public TO evolution;

\c evogo_users
GRANT ALL ON SCHEMA public TO evolution;
