# Point Accepts

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
    <td>waste_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>Waste could be used by 0 or more Points. See <a href="./08_WasteTypes.md">Waste Types</a>. On Delete CASCADE</td>
  </tr>
  <tr>
    <td>points_id</td>
    <td>
      <ul>
        <li>Integer</li>
        <li>Not Null</li>
        <li>Foreign Key</li>
      </ul>
    </td>
    <td>Points could accept 1 or more waste types See <a href="./07_Points.md">Points</a>. On Delete CASCADE</td>
  </tr>
  <tr>
    <td>price</td>
    <td>
      <ul>
        <li>Decimal</li>
      </ul>
    </td>
    <td>Acceptance price</td>
  </tr>
</table>
