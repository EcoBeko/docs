# Messages

<table>
  <tr>
    <th>Columns</th>
    <th>Properties</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Primary Key</li>
        <li>Auto-increment</li>
      </ul>
    </td>
    <td>Unique id</td>
  </tr>
  <tr>
    <td>friends_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>Many messages are related to 1 friends relationship. See <a href="./03_Friends.md">Friends</a>. On delete: CASCADE</td>
  </tr>
  <tr>
    <td>owner</td>
    <td>
      <ul>
        <li>Varchar2 (40)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Sender's full name</td>
  </tr>
  <tr>
    <td>message</td>
    <td>
      <ul>
        <li>Varchar2 (1000)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Message's content</td>
  </tr>
  <tr>
    <td>time</td>
    <td>
      <ul>
        <li>Timestamp</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Time of message creation</td>
  </tr>
</table>
