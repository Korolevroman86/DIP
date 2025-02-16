
// Заполняет описания поставляемых профилей групп доступа и
// переопределяет параметры обновления профилей и групп доступа.
//
// Для автоматической подготовки содержимого процедуры следует воспользоваться инструментами
// разработчика для подсистемы Управление доступом.
//
// Параметры:
//  ОписанияПрофилей - Массив из см. УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа,
//                               см. УправлениеДоступом.НовоеОписаниеПапкиПрофилейГруппДоступа
//  ПараметрыОбновления - Структура:
//   * ОбновлятьИзмененныеПрофили - Булево - начальное значение Истина.
//   * ЗапретитьИзменениеПрофилей - Булево - начальное значение Истина.
//       Если установить Ложь, тогда поставляемые профили можно не только просматривать, но и редактировать.
//   * ОбновлятьГруппыДоступа     - Булево - начальное значение Истина.
//   * ОбновлятьГруппыДоступаСУстаревшимиНастройками - Булево - начальное значение Ложь.
//       Если установить Истина, то настройки значений, выполненные администратором для
//       вида доступа, который был удален из профиля, будут также удалены из групп доступа.
//
// Пример:
//  ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
//  ОписаниеПрофиля.Имя           = "Менеджер";
//  ОписаниеПрофиля.Идентификатор = "75fa0ecb-98aa-11df-b54f-e0cb4ed5f655";
//  ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по продажам'", ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
//  ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
//  ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
//  ОписаниеПрофиля.Роли.Добавить("Подсистема_Продажи");
//  ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупателей");
//  ОписаниеПрофиля.Роли.Добавить("ПросмотрОтчетаКнигаПокупок");
//  ОписанияПрофилей.Добавить(ОписаниеПрофиля);
//
//  ОписаниеПапки = УправлениеДоступом.НовоеОписаниеПапкиПрофилейГруппДоступа();
//  ОписаниеПапки.Имя           = "ДополнительныеПрофили";
//  ОписаниеПапки.Идентификатор = "69a066e7-ce81-11eb-881c-b06ebfbf08c7";
//  ОписаниеПапки.Наименование  = НСтр("ru = 'Дополнительные профили'", ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписанияПрофилей.Добавить(ОписаниеПапки);
//
//  ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
//  ОписаниеПрофиля.Родитель = "ДополнительныеПрофили";
//  ОписаниеПрофиля.Идентификатор = "70179f20-2315-11e6-9bff-d850e648b60c";
//  ОписаниеПрофиля.Наименование = НСтр("ru = 'Редактирование, отправка по почте, сохранение в файл печатных форм (дополнительно)'",
//  	ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписаниеПрофиля.Описание = НСтр("ru = 'Дополнительно назначается пользователям, которым должна быть доступна возможность редактирования,
//  	|перед печатью, отправка по почте и сохранение в файл сформированных печатных форм.'");
//  ОписаниеПрофиля.Роли.Добавить("РедактированиеПечатныхФорм");
//  ОписанияПрофилей.Добавить(ОписаниеПрофиля);
//
Процедура ПриЗаполненииПоставляемыхПрофилейГруппДоступа(ОписанияПрофилей, ПараметрыОбновления) Экспорт
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер по продажам";
	ОписаниеПрофиля.Идентификатор = "21c30ab2-3d82-4f54-be4c-d303b5f826ea";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по продажам'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПокупателями");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер по закупкам";
	ОписаниеПрофиля.Идентификатор = "0ab577d8-fbac-45a9-b44f-7a0ca3c96d2c";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по закупкам'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПоставщиками");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Главный бухгалтер";
	ОписаниеПрофиля.Идентификатор = "0f2150dc-9fcd-4dcd-a1be-e5fe363efa73";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Главный бухгалтер'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзмененияДенежныхДокументов");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	//ВКМ_Доработка
	//Добавление новых поставляемых профилей групп доступа
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "БухгалтерИТФирмы";
	ОписаниеПрофиля.Идентификатор = "91f74f72-dea0-48ee-b076-fb8cda684e9c";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Бухгалтер ИТ Фирмы'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзмененияДенежныхДокументов");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_Бухгалтер");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер";
	ОписаниеПрофиля.Идентификатор = "673b6912-00fe-494a-bc2a-732c18eb158e";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПокупателями");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_Менеджер");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Специалист";
	ОписаниеПрофиля.Идентификатор = "965a9c83-4213-43e5-9738-59bbf6ec4455";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Специалист'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПокупателями");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_Специалист");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "КадровикРасчетчик";
	ОписаниеПрофиля.Идентификатор = "0bcffdb4-d810-4f9a-975b-a8a3e1a3e92a";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Кадровик - расчетчик'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПокупателями");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_КадровикРасчетчик");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	//КонецДоработки
КонецПроцедуры
