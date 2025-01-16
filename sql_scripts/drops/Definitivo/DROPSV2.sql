-- Eliminar todos los triggers
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT trigger_name, event_object_table FROM information_schema.triggers) LOOP
        EXECUTE 'DROP TRIGGER IF EXISTS ' || quote_ident(r.trigger_name) || ' ON ' || quote_ident(r.event_object_table) || ' CASCADE';
    END LOOP;
END $$;

-- Eliminar todas las vistas
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT table_name FROM information_schema.views WHERE table_schema NOT IN ('information_schema', 'pg_catalog')) LOOP
        EXECUTE 'DROP VIEW IF EXISTS ' || quote_ident(r.table_name) || ' CASCADE';
    END LOOP;
END $$;

-- Eliminar todas las funciones
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT routine_name, specific_name FROM information_schema.routines WHERE routine_type='FUNCTION' AND specific_schema NOT IN ('information_schema', 'pg_catalog')) LOOP
        EXECUTE 'DROP FUNCTION IF EXISTS ' || quote_ident(r.routine_name) || ' CASCADE';
    END LOOP;
END $$;

-- Eliminar todos los procedimientos
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT routine_name, specific_name FROM information_schema.routines WHERE routine_type='PROCEDURE' AND specific_schema NOT IN ('information_schema', 'pg_catalog')) LOOP
        EXECUTE 'DROP PROCEDURE IF EXISTS ' || quote_ident(r.routine_name) || ' CASCADE';
    END LOOP;
END $$;

-- Eliminar todas las secuencias
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT sequence_name FROM information_schema.sequences WHERE sequence_schema NOT IN ('information_schema', 'pg_catalog')) LOOP
        EXECUTE 'DROP SEQUENCE IF EXISTS ' || quote_ident(r.sequence_name) || ' CASCADE';
    END LOOP;
END $$;

-- Eliminar todas las tablas
DO $$ DECLARE
    r RECORD;
BEGIN
    FOR r IN (SELECT table_name FROM information_schema.tables WHERE table_schema NOT IN ('information_schema', 'pg_catalog') AND table_type='BASE TABLE') LOOP
        EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.table_name) || ' CASCADE';
    END LOOP;
END $$;