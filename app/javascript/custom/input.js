console.log('script input.js loaded')

// оставлю здесь на всякий случай
// function makeAjaxRequest() {
//     // Находим параметр numbers_count
//     var numbersCount = document.getElementById("numbers_count").value;
//     console.log(parseInt(numbersCount));

//     // Создаем объект XMLHttpRequest
//     var xhr = new XMLHttpRequest();

//     // Устанавливаем обработчик события при изменении состояния запроса
//     xhr.onreadystatechange = function() {
//       if (xhr.readyState === 4) { // Состояние "Готово"
//         if (xhr.status === 200) { // Успешный ответ
//           // Обработка данных, полученных от сервера
//           var responseData = JSON.parse(xhr.responseText);

//           // блок, в котором выводится таблица
//           var resultDiv = document.getElementById("result");
//           // resultDiv.innerHTML = ""; // удаляем предыдущий вывод
//           // resultDiv.style.display = ""; // включаем отображение
          
//           // создание таблицы вывода, присваивание аттрибутов
//           var resultTable = document.createElement("table");
//           resultDiv.appendChild(resultTable);
//           resultTable.setAttribute("id", "result_table");
//           resultTable.setAttribute("class", "table");
          
//           // создание тела таблицы
//           var resultTableBody = document.createElement("tbody");
//           resultTable.appendChild(resultTableBody);

//           var tr = document.createElement("tr");
//           var th = document.createElement("th");

//           // создание заголовков колонок
//           th.innerHTML = "Индекс";
//           tr.appendChild(th);
//           th = document.createElement("th");
//           th.innerHTML = "Число";
//           tr.appendChild(th);
//           resultTableBody.appendChild(tr);

//           var td;

//           // заполнение тела таблицы
//           for (var index in responseData) {
//             tr = document.createElement("tr");
            
//             // номер числа
//             td = document.createElement("td");
//             td.innerHTML = index;
//             tr.appendChild(td);

//             // само число
//             td = document.createElement("td");
//             td.innerHTML = responseData[index];
//             tr.appendChild(td);

//             resultTableBody.appendChild(tr);
//           }
//         } else {
//           // Обработка ошибки
//           console.error('Ошибка запроса. Статус:', xhr.status);
//         }
//     }
//     };

//     // Открываем соединение и отправляем GET-запрос на указанный URL
//     xhr.open("GET", `http://localhost:3000/lucky_numbers/view.json?numbers_count=${encodeURIComponent(numbersCount)}&commit=Увидеть+результат`, true);

//     // Отправляем запрос
//     xhr.send();
// }
