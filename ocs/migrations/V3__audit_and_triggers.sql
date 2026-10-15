CREATE TABLE audit_logs (
    log_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    tenant_id UUID,
    action VARCHAR(50) NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    recorded_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE OR REPLACE FUNCTION log_tenant_mutation()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_logs (tenant_id, action, table_name)
    VALUES (NEW.tenant_id, TG_OP, TG_TABLE_NAME);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER audit_events_trigger
AFTER INSERT ON events
FOR EACH ROW
EXECUTE FUNCTION log_tenant_mutation();
