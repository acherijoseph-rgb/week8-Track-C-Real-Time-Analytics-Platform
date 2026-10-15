-- Composite index for tenant-scoped time-series lookups
CREATE INDEX idx_events_tenant_time ON events (tenant_id, created_at DESC);

-- GIN index for high-performance JSONB payload attribute querying
CREATE INDEX idx_events_payload_gin ON events USING gin (payload);

CREATE INDEX idx_users_tenant ON users (tenant_id);
