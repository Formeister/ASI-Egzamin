<h2>Bartosz Formela (zaliczenie)</h2>

<h4>ZdarzyłoSięDzisiaj</h4>

<p>Aplikacja wyświetlająca informacje o aktualnym dniu oraz o powiązanych z nim wydarzeniach.<br>
   Każdy zarejestrowany użytkownik posiada możliwość spersonalizowania konkretnych dni i zapisywania wydarzeń z własnego życia.</p>

- [Link do wdrożonej na zewnętrznym serwerze aplikacji](https://zdarzylosiedzisiaj.herokuapp.com)

<table>
  <tr>
    <th>Wersja Ruby</th>
    <th>Wersja Rails</th>
    <th>Baza danych</th>
    <th>Framework</th>
    <th>Dodatkowe gemy</th>
  </tr>
  <tr>
    <td>2.3.3</td>
    <td>5.0.2</td>
    <td>Postgres</td>
    <td>Bootstrap</td>
    <td>mediawiki_api, rails-i18n, bcrypt-ruby, faker</td>
  </tr>
</table>

<b>Opis wykorzystanych niestandardowych gemów:</b>

<ul>
<li> <strong>mediawiki_api</strong> - Obsługa MediaWiki do pobierania wydarzeń z Wikipedii </li>
<li> <strong>rails-i18n</strong> - Internacjonalizacja, spolszczenie wyświetlania dat, paginacji, użytkowników</li>
<li> <strong>bcrypt-ruby</strong> - Algorytm haszujący dla haseł użytkowników</li>
<li> <strong>faker</strong> - Generator danych, tworzenie użytkowników wraz z przypisanymi im zdarzeniami</li>
</ul>
