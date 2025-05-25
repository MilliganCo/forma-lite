alter table modifiers enable row level security;
create policy service_insert on modifiers
  for insert
  with check (auth.role() = 'service_role');
