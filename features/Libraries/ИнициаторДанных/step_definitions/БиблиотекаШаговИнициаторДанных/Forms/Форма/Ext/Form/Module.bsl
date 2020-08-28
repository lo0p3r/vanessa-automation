﻿#Область ОписаниеПеременных

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

#КонецОбласти 

#Область ПрограммныйИнтерфейс

#Область СобытияСценариев

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции

#КонецОбласти 

#Область Шаги

#Область РаботаСПеременными

&НаКлиенте
//И Я сохраняю параметр сеанса "ИспользоватьЧерныйСписокКонтрагентов" в переменную "ИспользоватьЧерныйСписокКонтрагентов"
//@ЯСохраняюПараметрСеансаВПеременную(Парам01,Парам02)
Функция ЯСохраняюПараметрСеансаВПеременную(ИмяПараметраСеанса,ИмяПеременной) Экспорт
	Инициатор = Инициатор();
	ЗначениеПараметра = Инициатор.ПараметрСеанса(ИмяПараметраСеанса);	
	Инициатор.ЗапомнитьЗначение(ИмяПеременной, ЗначениеПараметра);		
КонецФункции

&НаКлиенте
//И Я запоминаю значение "Просто строка" в переменную "ТестСтрока"
//@ЯЗапоминаюЗначениеВПеременную(Парам01,Парам02)
Функция ЯЗапоминаюЗначениеВПеременную(ЗначениеПеременной, ИмяПеременной) Экспорт
	Инициатор().ЗапомнитьЗначение(ИмяПеременной, ЗначениеПеременной);		
КонецФункции

#КонецОбласти 

#Область СозданиеОбъектов

&НаКлиенте
//И я нахожу или создаю группу объекта "Справочники.Контрагенты" с именем "ГруппаКонтрагентов"
//@ЯНахожуИлиСоздаюГруппуОбъектаСИменем(Парам01,Парам02)
Функция ЯНахожуИлиСоздаюГруппуОбъектаСИменем(ИмяМенеджера, ИмяПеременной) Экспорт
	Инициатор().СоздатьСсылкуСИменем(ИмяМенеджера, ИмяПеременной, Неопределено, Истина);	
КонецФункции

&НаКлиенте
//И я нахожу или создаю объект "Справочники.Контрагенты" с именем "Контрагент"
//@ЯНахожуИлиСоздаюОбъектСИменем(Парам01,Парам02)
Функция ЯНахожуИлиСоздаюОбъектСИменем(ИмяМенеджера, ИмяПеременной) Экспорт
	Инициатор().СоздатьСсылкуСИменем(ИмяМенеджера, ИмяПеременной, Неопределено);
КонецФункции

&НаКлиенте
//И я нахожу или создаю объект "Документы.ПоступлениеТоваров" с именем "ДокПТУ1" на дату 01.02.2020
//@ЯНахожуИлиСоздаюОбъектСИменемНаДату(Парам01,Парам02,Парам03)
Функция ЯНахожуИлиСоздаюОбъектСИменемНаДату(ИмяМенеджера, ИмяПеременной, День) Экспорт
	Инициатор().СоздатьСсылкуСИменем(ИмяМенеджера, ИмяПеременной, Неопределено, День, Истина);
КонецФункции

&НаКлиенте
//И я создаю записи регистра сведений "ЧерныйСписокКонтрагентов" по таблице:
//@ЯСоздаюЗаписиРегистраСведенийПоТаблице(Парам01,ТабПарам)
Функция ЯСоздаюЗаписиРегистраСведенийПоТаблице(ИмяРегистра,ТабПарам) Экспорт
	Инициатор().СоздатьЗаписиРегистраСведенийПоТаблицеГеркина(ИмяРегистра, ТабПарам);
КонецФункции

#КонецОбласти 

#Область ЗаполнениеОбъектов

&НаКлиенте
//И я заполняю реквизиты объекта "Контрагент" по таблице:
//@ЯЗаполняюРеквизитыОбъектаПоТаблице(Парам01,ТабПарам)
Функция ЯЗаполняюРеквизитыОбъектаПоТаблице(ИмяПеременной,ТабПарам) Экспорт
	Инициатор().ЗагрузитьТаблицуРеквизитовОбъекта(ИмяПеременной,ТабПарам);
КонецФункции

&НаКлиенте
//И я заполняю табличную часть "Товары" объекта "ДокПТУ1" по таблице:
//@ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице(Парам01,Парам02,ТабПарам)
Функция ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице(ИмяТЧ,ИмяПеременной,ТабПарам) Экспорт
	Инициатор().ЗагрузитьТабличнуюЧастьОбъекта(ИмяТЧ,ИмяПеременной,ТабПарам);
КонецФункции

&НаКлиенте
//И я заполняю движения регистра "Запасы" документа "Операция" по таблице:
//@ЯЗаполняюДвиженияРегистраДокументаПоТаблице(Парам01,Парам02,ТабПарам)
Функция ЯЗаполняюДвиженияРегистраДокументаПоТаблице(ИмяРегистраДвижения, ИмяПеременной, ТабПарам) Экспорт
	Инициатор().ДобавитьДвиженияВДокумент(ИмяПеременной, ИмяРегистраДвижения, ТабПарам);	
КонецФункции

&НаКлиенте
//И я записываю документ "ДокПТУ1" в режиме "Проведение"
//@ЯЗаписываюДокументВРежиме(Парам01,Парам02)
Функция ЯЗаписываюДокументВРежиме(ИмяПеременной, Режим) Экспорт
	Инициатор().РезультатЗаписиДокумента(ИмяПеременной, Режим, Ложь);
КонецФункции

&НаКлиенте
//И я записываю документ "ДокПТУ1" в режиме "Проведение" с вызовом исключения
//@ЯЗаписываюДокументВРежимеСВызовомИсключения(Парам01,Парам02)
Функция ЯЗаписываюДокументВРежимеСВызовомИсключения(ИмяПеременной, Режим) Экспорт
	Инициатор().РезультатЗаписиДокумента(ИмяПеременной, Режим, Истина);
КонецФункции

&НаКлиенте
//И я устанавливаю константу "ОрганизацияПоУмолчанию" в значение переменной "Организация"
//@ЯУстанавливаюКонстантуВЗначениеПеременной(Парам01,Парам02)
Функция ЯУстанавливаюКонстантуВЗначениеПеременной(ИмяКонстанты, ИмяПеременной) Экспорт
	Инициатор = Инициатор();
	ЗначениеКУстановке = Инициатор.ЗначениеПеременной(ИмяПеременной);
	Инициатор.УстановитьКонстанту(ИмяКонстанты, ЗначениеКУстановке);
КонецФункции

#КонецОбласти 

#Область Проверки

&НаКлиенте
//И я выполняю проверку заполнения объекта "ДокПТУ1"
//@ЯВыполняюПроверкуЗаполненияОбъекта(Парам01)
Функция ЯВыполняюПроверкуЗаполненияОбъекта(ИмяПеременной) Экспорт
	Инициатор().ПроверкаЗаполненияПройдена(ИмяПеременной, Истина);	
КонецФункции

&НаКлиенте
//И я проверяю реквизиты объекта "ДокПТУ1" по таблице:
//@ЯПроверяюРеквизитыОбъектаПоТаблице(Парам01,ТабПарам)
Функция ЯПроверяюРеквизитыОбъектаПоТаблице(ИмяПеременной,ТабПарам) Экспорт
	Инициатор().ПроверитьРеквизитыОбъекта(ИмяПеременной,ТабПарам);	
КонецФункции

&НаКлиенте
//И Я проверяю, что движения документа "ДокПТУ1" по регистру "Запасы" идентичны таблице:
//@ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице(Парам01,Парам02,ТабПарам)
Функция ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице(ИмяПеременной, ВидРегистра, ТабПарам) Экспорт
	Инициатор().ПроверитьДвиженияПоРегистру(ИмяПеременной, ВидРегистра, ТабПарам);
КонецФункции

&НаКлиенте
//И я проверяю табличную часть "Товары" объекта "ДокПТУ1" по таблице:
//@ЯПроверяюТабличнуюЧастьОбъектаПоТаблице(Парам01,Парам02,ТабПарам)
Функция ЯПроверяюТабличнуюЧастьОбъектаПоТаблице(ИмяТЧ, ИмяПеременной, ТабПарам) Экспорт
	Инициатор().ПроверитьТабличнуюЧасть(ИмяПеременной, ИмяТЧ , ТабПарам);	
КонецФункции

#КонецОбласти 

#Область Очистка

&НаКлиенте
//И я помечаю объекты "Документы.ПоступлениеТоваров" на удаление
//@ЯПомечаюОбъектыНаУдаление(Парам01)
Функция ЯПомечаюОбъектыНаУдаление(ИмяМенеджера) Экспорт
	Инициатор().ПометитьОбъектыНаУдаление(ИмяМенеджера);	
КонецФункции

&НаКлиенте
//И я удаляю объекты "Документы.ПоступлениеТоваров" без контроля ссылок
//@ЯУдаляюОбъектыБезКонтроляСсылок(Парам01)
Функция ЯУдаляюОбъектыБезКонтроляСсылок(ИмяМенеджера) Экспорт
	Инициатор().УдалитьОбъектыБезКонтроляСсылок(ИмяМенеджера);
КонецФункции

&НаКлиенте
//И я удаляю переменные текущего сценария
//@ЯУдаляюПеременныеТекущегоСценария()
Функция ЯУдаляюПеременныеТекущегоСценария() Экспорт
	Инициатор().ОчиститьПеременныеТекущегоСценария();

КонецФункции

&НаКлиенте
//И я откатываю изменения
//@ЯОткатываюИзменения()
Функция ЯОткатываюИзменения() Экспорт
	Инициатор().ОткатитьИзменения();
КонецФункции

#КонецОбласти 

#КонецОбласти 

#КонецОбласти 

#Область СлужебныйПрограммныйИнтерфейс

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	ДобавитьШаги(ВсеТесты);
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#Область Сервис

&НаКлиенте
Функция Инициатор()
	Возврат Ванесса.ИнициаторДанных();	
КонецФункции

&НаКлиенте
Процедура ДобавитьШаги(ВсеТесты)
	
// РаботаСПеременными
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯСохраняюПараметрСеансаВПеременную());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗапоминаюЗначениеВПеременную());

// СозданиеОбъектов
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯНахожуИлиСоздаюГруппуОбъектаСИменем());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯНахожуИлиСоздаюОбъектСИменемНаДату());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯСоздаюЗаписиРегистраСведенийПоТаблице());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯНахожуИлиСоздаюОбъектСИменем());

// ЗаполнениеОбъектов
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗаполняюРеквизитыОбъектаПоТаблице());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗаполняюДвиженияРегистраДокументаПоТаблице());	
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗаписываюДокументВРежиме());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯЗаписываюДокументВРежимеСВызовомИсключения());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯУстанавливаюКонстантуВЗначениеПеременной());

// Проверки
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯВыполняюПроверкуЗаполненияОбъекта());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯПроверяюРеквизитыОбъектаПоТаблице());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯПроверяюТабличнуюЧастьОбъектаПоТаблице());

// Очистка
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯУдаляюПеременныеТекущегоСценария());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯПомечаюОбъектыНаУдаление());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯУдаляюОбъектыБезКонтроляСсылок());
	ДобавитьШагВМассивТестов(ВсеТесты, ОШ_ЯОткатываюИзменения());
	
КонецПроцедуры

&НаКлиенте
Процедура УстановитьТипШага(ОписаниеШага, Раздел)	
	ОписаниеШага.ТипШага = "Инициатор данных." + Раздел;
КонецПроцедуры

&НаКлиенте
Процедура ДобавитьШагВМассивТестов(ВсеТесты, ОписаниеШага)
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты
		, ОписаниеШага.Снипет
		, ОписаниеШага.ИмяПроцедуры
		, ОписаниеШага.ПредставлениеТеста
		, ОписаниеШага.ОписаниеШага
		, ОписаниеШага.ТипШага
		, ОписаниеШага.ТипШагаВДереве);		
КонецПроцедуры

Функция ЧастьОписанияШагаОбъекта()
	Возврат "В качестве имени менеджера указывается <имя класса в множественном числе>.<Вид>, например ""Документы.ПоступлениеТоваров"". " + 
	"Объекту назначается автоматически генерируемый УИД - уникален в разрезе имени фичи, имени менеджера и имени переменной.";		
КонецФункции

Функция ТекДатаФормат()
	Возврат Формат(ТекущаяДата(), "ДФ=dd.MM.yyyy");		
КонецФункции

#КонецОбласти 

#Область ОписанияШагов

#Область РаботаСПеременными    

&НаКлиенте
Функция ОШ_ЯСохраняюПараметрСеансаВПеременную()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯСохраняюПараметрСеансаВПеременную(ИмяПараметраСеанса,ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯСохраняюПараметрСеансаВПеременную";
	Результат.ПредставлениеТеста = "И Я сохраняю параметр сеанса ""ИмяПараметраСеанса"" в переменную ""ИмяПеременной""";
	Результат.ОписаниеШага = "Получение указанного параметра сеанса, сохранение значения в переменную";
	
	УстановитьТипШага(Результат, "Работа с переменными");
	
	Возврат Результат;
КонецФункции 

&НаКлиенте
Функция ОШ_ЯЗапоминаюЗначениеВПеременную()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗапоминаюЗначениеВПеременную(Значение, ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯЗапоминаюЗначениеВПеременную";
	Результат.ПредставлениеТеста = "И Я запоминаю значение ""ЗначениеПеременной"" в переменную ""ИмяПеременной""";
	Результат.ОписаниеШага = "Установка значения в переменную, для последующего использования в теле скрипта";
	
	УстановитьТипШага(Результат, "Работа с переменными");
	
	Возврат Результат;
	
КонецФункции
 
#КонецОбласти 

#Область СозданиеОбъектов

&НаКлиенте
Функция ОШ_ЯНахожуИлиСоздаюГруппуОбъектаСИменем()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯНахожуИлиСоздаюГруппуОбъектаСИменем(ИмяМенеджера, ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯНахожуИлиСоздаюГруппуОбъектаСИменем";
	Результат.ПредставлениеТеста = "И я нахожу или создаю группу объекта ""КлассМнч.Вид"" с именем ""ИмяПеременной""";
	Результат.ОписаниеШага = "Создание группы объекта с поддержкой иерархии (справочника, плана видов характеристик). " + 
	ЧастьОписанияШагаОбъекта();
	
	УстановитьТипШага(Результат, "Создание объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯНахожуИлиСоздаюОбъектСИменем()
		
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯНахожуИлиСоздаюОбъектСИменем(ИмяМенеджера, ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯНахожуИлиСоздаюОбъектСИменем";
	Результат.ПредставлениеТеста = "И я нахожу или создаю объект ""КлассМнч.Вид"" с именем ""ИмяПеременной""";
	Результат.ОписаниеШага = "Создание ссылочного объекта. " + ЧастьОписанияШагаОбъекта();
	
	УстановитьТипШага(Результат, "Создание объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯНахожуИлиСоздаюОбъектСИменемНаДату()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯНахожуИлиСоздаюОбъектСИменемНаДату(ИмяМенеджера, ИмяПеременной, День)";
	Результат.ИмяПроцедуры = "ЯНахожуИлиСоздаюОбъектСИменемНаДату";
	Результат.ПредставлениеТеста = "И я нахожу или создаю объект ""КлассМнч.Вид"" с именем ""ИмяПеременной"" на дату " + ТекДатаФормат();
	Результат.ОписаниеШага = "Создание ссылочного объекта с поддержкой оси времени (документы, задачи, бизнес-процессы). " + ЧастьОписанияШагаОбъекта();
	
	УстановитьТипШага(Результат, "Создание объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯСоздаюЗаписиРегистраСведенийПоТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯСоздаюЗаписиРегистраСведенийПоТаблице(ИмяРегистра, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯСоздаюЗаписиРегистраСведенийПоТаблице";
	Результат.ПредставлениеТеста = "И я создаю записи регистра сведений ""ИмяРегистра"" по таблице:
	|	|Период			|ИмяИзмеренияN	|ИмяРесурсаN	|ИмяРеквизитаN	|
	|	|01.01.2020		|				|				|				|";	
	
	Результат.ПредставлениеТеста = СтрЗаменить(Результат.ПредставлениеТеста, "01.01.2020", ТекДатаФормат());
	Результат.ОписаниеШага = "Создание записей указанного регистра сведений. Записи регистра описываются "+
	"таблицей, где имена колонок соответствуют именам нужных измерений, ресурсов, реквизитов. В строках "+
	"находятся имена переменных, или значения простых типов";
	
	УстановитьТипШага(Результат, "Создание объектов");
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти 

#Область ЗаполнениеОбъектов

&НаКлиенте
Функция ОШ_ЯЗаполняюРеквизитыОбъектаПоТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗаполняюРеквизитыОбъектаПоТаблице(ИмяПеременной, ТабПарам";
	Результат.ИмяПроцедуры = "ЯЗаполняюРеквизитыОбъектаПоТаблице";
	Результат.ПредставлениеТеста = "И я заполняю реквизиты объекта ""ИмяПеременной"" по таблице: 
	|	|Имя			|Значение			|
	|	|ИмяРеквизита	|ЗначениеРеквизита	|";
	Результат.ОписаниеШага = "Загрузка реквизитов в объект переменной. Реквизиты описываются таблицей, с двумя "+
	"обязательными колонками: Имя, Значение. В полях колонки ""Значение"" находятся имена переменных, или "+
	"значения простых типов. Поля колонки ""Имя"" всегда строковый реквизит (имя реквизита, как оно задано в "+
	"конфигурации). При этом в колонке ""Имя"" допускаются поля, идентичные именам переменных.";
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице(ИмяТЧ, ИмяПеременной, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯЗаполняюТабличнуюЧастьОбъектаПоТаблице";
	Результат.ПредставлениеТеста = "И я заполняю табличную часть ""ИмяТЧ"" объекта ""ИмяПеременной"" по таблице:
	|	|ИмяРеквизитаТабличнойЧастиN			|
	|	|ИмяПеременнойИлиЗначениеПростогоТипа	|";	
	Результат.ОписаниеШага = "Загрузка табличной части в объект переменной. Табличная часть описывется таблицей, где имя "+
	"колонки соответствует имени реквизита, а в строках находятся имена переменных, или значения простых типов";
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯЗаполняюДвиженияРегистраДокументаПоТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗаполняюДвиженияРегистраДокументаПоТаблице(ИмяРегистраДвижения, ИмяПеременной, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯЗаполняюДвиженияРегистраДокументаПоТаблице";
	Результат.ПредставлениеТеста = "И я заполняю движения регистра ""ИмяРегистраДвижения"" документа ""ИмяПеременной"" по таблице:
	|	|ИмяИзмеренияN	|ИмяРесурсаN	|ИмяРеквизитаN	|
	|	|				|				|				|";	

	Результат.ОписаниеШага = "Загрузка движений по регистру в объект переменной документа. Записи движений описываются "+
	"таблицей, где имена колонок соответствуют именам нужных измерений, ресурсов, реквизитов. В строках "+
	"находятся имена переменных, или значения простых типов";	
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции
 
&НаКлиенте
Функция ОШ_ЯЗаписываюДокументВРежиме()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗаписываюДокументВРежиме(ИмяПеременной, Режим)";
	Результат.ИмяПроцедуры = "ЯЗаписываюДокументВРежиме";
	Результат.ПредставлениеТеста = "И я записываю документ ""ИмяПеременной"" в режиме ""Проведение""";	
	Результат.ОписаниеШага = "Запись документа в указанном режиме, без вызова исключения при ошибке записи "+
	"(см. метод формы ""ИнциаторДанных.РезультатЗаписиДокумента""). Режим - идентификатор системного перечисления " + 
	"""РежимЗаписиДокумента"": ""Запись"", ""Проведение"", ""ОтменаПроведения"".";
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯЗаписываюДокументВРежимеСВызовомИсключения()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯЗаписываюДокументВРежимеСВызовомИсключения(ИмяПеременной, Режим)";
	Результат.ИмяПроцедуры = "ЯЗаписываюДокументВРежимеСВызовомИсключения";
	Результат.ПредставлениеТеста = "И я записываю документ ""ИмяПеременной"" в режиме ""Проведение"" с вызовом исключения";	
	Результат.ОписаниеШага = "Запись документа в указанном режиме, с вызовом исключения при ошибке записи "+
	"(см. метод формы ""ИнциаторДанных.РезультатЗаписиДокумента""). Режим - идентификатор системного перечисления " + 
	"""РежимЗаписиДокумента"": ""Запись"", ""Проведение"", ""ОтменаПроведения"". Текст исключения собирается из "+
	"описания ошибки исключения системы, а также сообщений пользователю, вызванных событием проведения.";
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯУстанавливаюКонстантуВЗначениеПеременной()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯУстанавливаюКонстантуВЗначениеПеременной(ИмяКонстанты, ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯУстанавливаюКонстантуВЗначениеПеременной";
	Результат.ПредставлениеТеста = "И я устанавливаю константу ""ИмяКонстанты"" в значение переменной ""ИмяПеременной""";
	Результат.ОписаниеШага = "Установка константы по ранее инициализированной переменной. При использовании методов отката изменений, "+
	"значение константы возвращается к исходному.";
	
	УстановитьТипШага(Результат, "Заполнение объектов");
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти 

#Область Проверки

&НаКлиенте
Функция ОШ_ЯВыполняюПроверкуЗаполненияОбъекта()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯВыполняюПроверкуЗаполненияОбъекта(ИмяПеременной)";
	Результат.ИмяПроцедуры = "ЯВыполняюПроверкуЗаполненияОбъекта";
	Результат.ПредставлениеТеста = "И я выполняю проверку заполнения объекта ""ИмяПеременной""";
	Результат.ОписаниеШага = "Вызов проверки заполнения объекта с вызовом исключения по факту неудачи. "+
	"Текст исключения собирается из сообщений пользователю, вызванных событием проверки заполнения.";
	
	УстановитьТипШага(Результат, "Проверки");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯПроверяюРеквизитыОбъектаПоТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯПроверяюРеквизитыОбъектаПоТаблице(ИмяПеременной, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯПроверяюРеквизитыОбъектаПоТаблице";
	Результат.ПредставлениеТеста = "И я проверяю реквизиты объекта ""ИмяПеременной"" по таблице:
	|	|Имя			|Значение			|
	|	|ИмяРеквизита	|ЗначениеРеквизита	|";	
	
	Результат.ОписаниеШага = "Проверка реквизитов переменной. Реквизиты описываются таблицей, с двумя "+
	"обязательными колонками: Имя, Значение. В полях колонки ""Значение"" находятся имена переменных, или "+
	"значения простых типов. Поля колонки ""Имя"" всегда строковый реквизит (имя реквизита, как оно задано в "+
	"конфигурации). При этом в колонке ""Имя"" допускаются поля, идентичные именам переменных.";	
	
	УстановитьТипШага(Результат, "Проверки");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице(ИмяПеременной, ИмяРегистра, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯПроверяюЧтоДвиженияДокументаПоРегиструИдентичныТаблице";
	Результат.ПредставлениеТеста = "И Я проверяю, что движения документа ""ИмяПеременной"" по регистру ""ИмяРегистраДвижения"" идентичны таблице:
	|	|ИмяИзмеренияN	|ИмяРесурсаN	|ИмяРеквизитаN	|
	|	|				|				|				|";	
	
	Результат.ОписаниеШага = "Проверка записей движений документа по указанному регистру. Записи регистра описываются "+
	"таблицей, где имена колонок соответствуют именам нужных измерений, ресурсов, реквизитов. В строках "+
	"находятся имена переменных, или значения простых типов";	
	
	УстановитьТипШага(Результат, "Проверки");
	
	Возврат Результат;	
КонецФункции

&НаКлиенте
Функция ОШ_ЯПроверяюТабличнуюЧастьОбъектаПоТаблице()
	
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯПроверяюТабличнуюЧастьОбъектаПоТаблице(ИмяТЧ, ИмяПеременной, ТабПарам)";
	Результат.ИмяПроцедуры = "ЯПроверяюТабличнуюЧастьОбъектаПоТаблице";
	Результат.ПредставлениеТеста = "И я проверяю табличную часть ""ИмяТЧ"" объекта ""ИмяПеременной"" по таблице:
	|	|ИмяРеквизитаТабличнойЧастиN	|
	|	|								|";	
	
	Результат.ОписаниеШага = "Сверка табличной части объекта с переданной таблицей. Выполняется перебором, т.е. учитывается порядок строк.";	
	
	УстановитьТипШага(Результат, "Проверки");
	
	Возврат Результат;	
	
КонецФункции
 
#КонецОбласти 

#Область Очистка

&НаКлиенте
Функция ОШ_ЯПомечаюОбъектыНаУдаление()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯПомечаюОбъектыНаУдаление(ИмяМенеджера)";
	Результат.ИмяПроцедуры = "ЯПомечаюОбъектыНаУдаление";
	Результат.ПредставлениеТеста = "И я помечаю объекты ""КлассМнч.Вид"" на удаление";
	Результат.ОписаниеШага = "Пометка на удаление объектов указанного вида. Параметром указывается имя менеджера, "+
	"например ""Справочники.Контрагенты"", ""Документы.ПоступлениеНаРасчетныйСчет""";
	
	УстановитьТипШага(Результат, "Очистка");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯУдаляюОбъектыБезКонтроляСсылок()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯУдаляюОбъектыБезКонтроляСсылок(ИмяМенеджера)";
	Результат.ИмяПроцедуры = "ЯУдаляюОбъектыБезКонтроляСсылок";
	Результат.ПредставлениеТеста = "И я удаляю объекты ""КлассМнч.Вид"" без контроля ссылок";
	Результат.ОписаниеШага = "Непосредственное удаление объектов указанного вида. Параметром указывается имя менеджера, "+
	"например ""Справочники.Контрагенты"", ""Документы.ПоступлениеНаРасчетныйСчет""";
	
	УстановитьТипШага(Результат, "Очистка");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯУдаляюПеременныеТекущегоСценария()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯУдаляюПеременныеТекущегоСценария()";
	Результат.ИмяПроцедуры = "ЯУдаляюПеременныеТекущегоСценария";
	Результат.ПредставлениеТеста = "И я удаляю переменные текущего сценария";
	Результат.ОписаниеШага = "Очистка переменных, созданных в рамках одного сценария. Имена переменых "+
	"освобождаются, значения ссылочных переменных удаляются непосредственно, записи регистров сведений " +
	"очищаются, значения констант приводятся к исходным (до установки в сценарии).";
	
	УстановитьТипШага(Результат, "Очистка");
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Функция ОШ_ЯОткатываюИзменения()
	Результат = НовоеОписаниеШага();
	Результат.Снипет = "ЯОткатываюИзменения()";
	Результат.ИмяПроцедуры = "ЯОткатываюИзменения";
	Результат.ПредставлениеТеста = "И я откатываю изменения";
	Результат.ОписаниеШага = "Очистка переменных, созданных в рамках фичи. Имена переменых "+
	"освобождаются, значения ссылочных переменных удаляются непосредственно, записи регистров сведений " +
	"очищаются, значения констант приводятся к исходным (до установки в сценарии).";
	
	УстановитьТипШага(Результат, "Очистка");
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти 

#КонецОбласти 

#Область Конструкторы

Функция НовоеОписаниеШага()
	
	Результат = Новый Структура;
	Результат.Вставить("Снипет", "");
	Результат.Вставить("ИмяПроцедуры", "");
	Результат.Вставить("ПредставлениеТеста", "");
	Результат.Вставить("ОписаниеШага", "");
	Результат.Вставить("ТипШага");
	Результат.Вставить("ТипШагаВДереве", "");
	
	Возврат Результат;
	
КонецФункции
 
#КонецОбласти 

#КонецОбласти