INSERT INTO tenants (tenant_id, name) VALUES 
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Acme Corp'),
('b1ffcd00-0d1c-4fe9-cc7e-7cc0ce491b22', 'Globex Industries');

INSERT INTO users (tenant_id, email, role) VALUES 
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'admin@acme.com', 'admin'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'viewer@acme.com', 'viewer'),
('b1ffcd00-0d1c-4fe9-cc7e-7cc0ce491b22', 'admin@globex.com', 'admin');

INSERT INTO events (tenant_id, event_type, payload) VALUES 
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'page_view', '{"path": "/dashboard", "status": 200}'),
('b1ffcd00-0d1c-4fe9-cc7e-7cc0ce491b22', 'api_call', '{"endpoint": "/v1/data", "status": 500}');
