# Waste Types

Type values:

- energy
- trees
- both
- none

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
    <td>Waste's title</td>
  </tr>
  <tr>
    <td>type</td>
    <td>
      <ul>
        <li>Varchar2 (30)</li>
        <li>Not Null</li>
        <li>Check</li>
      </ul>
    </td>
    <td>Type</td>
  </tr>
  <tr>
    <td>icon</td>
    <td>
      <ul>
        <li>Varchar2 (200)</li>
        <li>Not Null</li>
      </ul>
    </td>
    <td>Image hash sum</td>
  </tr>
</table>
