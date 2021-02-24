# Friends

Statuses:

- request - in a stage of request
- friends - request was accepted
- dismissed - request was denied

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
    <td>user_1_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>1 to 0 or many, users has 0 or more friends. See <a href="./01_Users.md">Users</a>. On delete: CASCADE</td>
  </tr>
  <tr>
    <td>user_2_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>1 to 0 or many, users has 0 or more friends. See <a href="./01_Users.md">Users</a>. On delete: CASCADE</td>
  </tr>
  <tr>
    <td>last_time</td>
    <td>
      <ul>
        <li>Timestamp</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Last time action was performed by friends</td>
  </tr>
  <tr>
    <td>status</td>
    <td>
      <ul>
        <li>Varchar2 (20)</li>
        <li>Not Null</li>
        <li>Check for correction</li>
      </ul>
    </td>
    <td>Row status</td>
  </tr>
</table>
