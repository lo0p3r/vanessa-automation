﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOn8317
@IgnoreOn8318


Функционал: Получение текста исключения, когда платформа не отдает текст исключения

Сценарий: Получение текста исключения, когда платформа не отдает текст исключения. Ошибка компиляции модуля.
	* Запуск тестовой фичи
		Дано Я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT
		Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

		И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
			И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
			
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ExceptionText/ExceptionText01"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Проверка результата
		Если версия платформы ">=" "8.3.21.1" Тогда
			Тогда в логе сообщений TestClient есть строки:
				|'ОшибкаКомпиляцииВстроенногоЯзыка'|
		Иначе		
			Тогда в логе сообщений TestClient есть строки:
				|'ТекстДляОшибкиКомпиляцииМодуля'|
					
	* Закрытие окон
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	