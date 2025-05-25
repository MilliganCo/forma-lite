create extension if not exists "uuid-ossp";

create table users (
  id uuid primary key default uuid_generate_v4(),
  email text unique not null,
  created_at timestamptz default now()
);

create type rarity as enum ('common','rare','epic');

create table figures (
  id uuid primary key default uuid_generate_v4(),
  shape text not null,
  base_material jsonb not null,
  rarity rarity not null default 'common'
);

create table user_figures (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references users on delete cascade,
  figure_id uuid references figures,
  obtained_at timestamptz default now(),
  custom_material jsonb,
  in_scene bool default false
);

create table scenes (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references users on delete cascade,
  scene_data jsonb not null,
  likes int default 0,
  is_public bool default true,
  updated_at timestamptz default now()
);

create table likes (
  user_id uuid,
  scene_id uuid,
  liked_at timestamptz default now(),
  primary key (user_id, scene_id),
  constraint fk_scene foreign key(scene_id) references scenes on delete cascade
);

alter table user_figures enable row level security;
alter table scenes       enable row level security;

create policy "own_figs" on user_figures
  for all using (auth.uid() = user_id);

create policy "own_scenes_mod" on scenes
  for all using (auth.uid() = user_id);

create policy "public_scenes_read" on scenes
  for select using (is_public);
