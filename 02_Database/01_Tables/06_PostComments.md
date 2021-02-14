# Post comments

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
    <td>post_id</td>
    <td>
      <ul>
        <li>Not Null</li>
        <li>Foreign Key</li>
        <li>Integer</li>
      </ul>
    </td>
    <td>Posts could have 0 or more comments See <a href="./05_Posts.md">Posts</a></td>
  </tr>
  <tr>
    <td>text</td>
    <td>
      <ul>
        <li>Varchar2 (1000)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Comment itself</td>
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
</table>
