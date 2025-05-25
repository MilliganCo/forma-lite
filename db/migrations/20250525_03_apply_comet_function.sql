create or replace function apply_comet_to_user(p_user_id uuid, p_modifier_id uuid)
returns void
language plpgsql
security definer
as $$
begin
  update user_figures
  set custom_material = coalesce(custom_material,'{}'::jsonb) || jsonb_build_object('emissiveIntensity',0.4)
  where user_id = p_user_id
    and in_scene = true;
  insert into modifiers_user_bridge(user_id,modifier_id)  -- optional audit-таблица
  values (p_user_id,p_modifier_id)
  on conflict do nothing;
end;
$$;
