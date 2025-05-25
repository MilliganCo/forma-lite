-- расширяем enum rarity
begin;
alter type rarity add value if not exists 'rare_chromatic';
alter type rarity add value if not exists 'rare_noise';
alter type rarity add value if not exists 'rare_transparent';
alter type rarity add value if not exists 'rare_deformer';
alter type rarity add value if not exists 'rare_audio';
commit;
