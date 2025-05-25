create or replace function daily_drop_reset()
returns void
language plpgsql
security definer
as $$
begin
  -- очищать отметки не требуется: логика дропа проверяет дату.
  -- можно расширить в будущем для счётчиков.
  raise notice 'daily reset ok';
end;
$$;
