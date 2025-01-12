CREATE OR REPLACE FUNCTION get_usuarios_personas()
RETURNS TABLE(
    per_cod INT,
    per_nombre VARCHAR,
    user_nombre VARCHAR,
	tipo_persona TEXT
) AS $$ 
BEGIN
	return query
	select distinct tp."Per_cod", tp."Per_nombre", u.user_nombre,
		tp.tipo as tipo_persona
	from todas_las_personas tp, usuario u, proveedor p
	where tp."Per_cod" = u.fk_personal or
	tp."Per_cod" = u.fk_natural or
	tp."Per_cod" = u.fk_juridica
	order by 1;
END;

$$ LANGUAGE plpgsql;