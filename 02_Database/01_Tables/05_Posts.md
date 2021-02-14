# Posts

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
    <td>owner_id</td>
    <td>
      <ul>
        <li>Not Null</li>
        <li>Foreign Key</li>
        <li>Integer</li>
      </ul>
    </td>
    <td>User's could write 0 or more posts. See <a href="./01_Users.md">Users</a></td>
  </tr>
  <tr>
    <td>title</td>
    <td>
      <ul>
        <li>Varchar2 (50)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Article's title</td>
  </tr>
  <tr>
    <td>article</td>
    <td>
      <ul>
        <li>Varchar2 (4000)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Article itself</td>
  </tr>
  <tr>
    <td>time</td>
    <td>
      <ul>
        <li>Timestamp</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Time of article creation</td>
  </tr>
  <tr>
    <td>likes</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Amount of likes</td>
  </tr>
  <tr>
    <td>image</td>
    <td>
      <ul>
        <li>Varchar2 (200)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Amount of likes</td>
  </tr>
</table>
