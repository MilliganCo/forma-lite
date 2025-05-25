create table if not exists modifiers (
  id uuid primary key default uuid_generate_v4(),
  type text not null,          -- 'comet' пока единственный
  payload jsonb not null,      -- {emissiveIntensity:0.4}
  created_at timestamptz default now()
);

-- RLS: только сервис-функции могут писать
alter table modifiers enable row level security;
create policy read_all on modifiers for select using (true);
