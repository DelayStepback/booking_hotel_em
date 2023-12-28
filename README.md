# booking_hotel_em

Бронирование отелей на Flutter.

https://drive.google.com/file/d/1Sp6r8cMbOktljmsSVMPwE5EyeCqxwvvw/view?usp=drive_link

## Жизненный цикл приложения

![image](https://github.com/DelayStepback/booking_hotel_em/assets/79159215/210afbbc-84e1-486a-8de5-159a5ad57e9a)

<h2 align="center"> Libraries </h2>

1. Uses [flutter_svg](https://pub.dev/packages/flutter_svg) for work with svg
2. Uses [screenUtil](https://pub.dev/packages/flutter_screenutil) for adaptability 
3. Uses [json_annotation](https://pub.dev/packages/json_annotation) for serialization and deserialization 
4. Uses [freezed_annotation](https://pub.dev/packages/freezed_annotation) for freezed code generation
5. Uses [json_serializable](https://pub.dev/packages/json_serializable) for json codegeneration
6. Uses [dio](https://pub.dev/packages/dio) for work with network
7. Uses [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state manager
8. Uses [go_router](https://pub.dev/packages/go_router) for navigation
9. Uses [freezed](https://pub.dev/packages/freezed) for codegeneration

## Экран «Отель»

 <img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/2d183b76-5224-48de-826d-84a947df6add" width="300" /> 
<img src= "https://github.com/DelayStepback/booking_hotel_em/assets/79159215/9eede993-ff53-4ddd-97be-a609ad4fbad3" width="300"/> 

## Экран «Номер»

<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/ffdf1017-d5be-4619-97e9-4d4a4fbff0e2" width="300" /> 
<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/8374a653-ab32-4353-ae7e-6d4cc5877f9a" width="300" /> 

## Экран «Бронирование»

<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/3295c755-0c6a-4296-9b7e-968dcd3c7f20" width="300" /> 
<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/590af4e4-4406-4b83-a38a-5bd25ae0da79" width="300" /> 
<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/a8386226-7cc6-4573-9cb7-401c6cff24c9" width="300" /> 
<img src="https://github.com/DelayStepback/booking_hotel_em/assets/79159215/46233723-b1ab-4e54-8fe7-a8f63855dbc5" width="300" /> 

## Экран «Оплачено»

<img src = "https://github.com/DelayStepback/booking_hotel_em/assets/79159215/5ac65bb3-c4c8-4079-a42b-b51a9ac3ed4d" width = "300" /> 



## Сценарии использования
### Пользователь хочет заполнить номер телефона
1. Пользователь, находясь на экране «бронирование», хочет заполнить номер телефона в блоке «информация о покупателе». Кликает на поле
2. Автоматически поле заполняется маской +7 (***) ***-**-**
3. Пользователь начинает вводить номер телефона, начиная с цифры 9
4. Цифра 9 встает на место первой звездочки
5. Пользователь продолжает ввод цифр и по мере заполнения меняются
соответствующие звездочки на цифры
### Пользователь хочет заполнить почту
1. Пользователь, находясь на экране «бронирование», хочет заполнить почту в блоке «информация о покупателе». Кликает на поле
2. Вводит валидную почту, например, john123@mail.ru
## Альтернативный сценарий
1. Пользователь вводит некорректную почту, например, джон21@mail.ru или john/12@mail.ru, или john12@mailru
2. Пользователь, выйдя из режима ввода данных в поле, хочет заполнить остальную информацию
3. Высвечивается ошибка о том, что почта введена некорректно (просто закрашивается поле в цвет)
### Пользователь хочет ввести данные о туристе
1. Пользователь, находясь на экране «бронирование», хочет заполнить данные о туристе. Раскрывает вкладку, если она скрыта и начинает вводить данные о туристе
2. Пользователь вводит все необходимые данные
3. Пользователь добавляет нового туриста или заканчивает заполнение
данных
## Альтернативный сценарий
1. Пользователь заполняет частично данные или не заполняет данные вовсе
2. Пользователь нажимает на кнопку «оплатить»
3. Высвечивается ошибка о том, что данные необходимо заполнить. Так же, как
и с полем почты, закрашивать поле в тот же цвет по HEX коду.

### Пользователь хочет оплатить бронь
1. Пользователь, находясь на экране «бронирование», хочет оплатить бронь и нажимает на кнопку «оплатить»
2. Открывается экран «Оплачено»
3. Альтернативный сценарий
4. Оплата не проходит, так как пользователь не заполнил соответствующие поля
5. Все незаполненные поля закрашивает в цвет ошибки
