# Forma Lite

Легковесная версия приложения Forma для создания и обмена 3D-сценами.

## Особенности

- 🎨 Создание 3D-сцен из базовых форм
- 🌈 Кастомизация материалов
- 📱 Кроссплатформенность (Web, Android, iOS)
- 🔒 Аутентификация через Supabase
- 🎮 Физика взаимодействия объектов

## Установка

1. Убедитесь, что у вас установлен Flutter 3.22.0:
```bash
flutter --version
```

2. Клонируйте репозиторий:
```bash
git clone <repo>
cd forma_lite
```

3. Установите зависимости:
```bash
cd app_forma_lite
flutter pub get
```

4. Настройте Supabase:
```bash
supabase init
supabase db reset
```

5. Запустите приложение:
```bash
flutter run
```

## Тестирование

```bash
flutter test
```

## Лицензия

MIT
