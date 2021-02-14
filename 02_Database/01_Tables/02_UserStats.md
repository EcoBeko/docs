# User Statistics

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
    <td>user_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>1 to 1 reference, Each user has one and only one row of his statistics. See <a href="./01_Users.md">Users</a></td>
  </tr>
  <tr>
    <td>trees</td>
    <td>
      <ul>
        <li>Number</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Amount of Trees saved</td>
  </tr>
  <tr>
    <td>energy</td>
    <td>
      <ul>
        <li>Number</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Amount of Energy saved</td>
  </tr>
  <tr>
    <td>waste</td>
    <td>
      <ul>
        <li>Number</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Amount of waste collected</td>
  </tr>
</table>
