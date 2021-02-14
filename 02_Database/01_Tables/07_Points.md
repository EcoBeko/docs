# Points

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
    <td>title</td>
    <td>
      <ul>
        <li>Varchar2 (50)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's title</td>
  </tr>
  <tr>
    <td>address</td>
    <td>
      <ul>
        <li>Varchar2 (60)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's address</td>
  </tr>
  <tr>
    <td>working_time</td>
    <td>
      <ul>
        <li>Varchar2 (60)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's working time</td>
  </tr>
  <tr>
    <td>latitude</td>
    <td>
      <ul>
        <li>Number</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's latitude</td>
  </tr>
  <tr>
    <td>longitude</td>
    <td>
      <ul>
        <li>Number</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's longitude</td>
  </tr>
  <tr>
    <td>site</td>
    <td>
      <ul>
        <li>Varchar2 (200)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Site link</td>
  </tr>
  <tr>
    <td>type</td>
    <td>
      <ul>
        <li>Varchar2 (20)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's type</td>
  </tr>
  <tr>
    <td>phone</td>
    <td>
      <ul>
        <li>Varchar2 (10)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Point's phone number</td>
  </tr>
  <tr>
    <td>additional_info</td>
    <td>
      <ul>
        <li>Varchar2 (200)</li>
      </ul>
    </td>
    <td>Point's additional info</td>
  </tr>
</table>
