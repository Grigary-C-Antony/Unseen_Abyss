# flutter_maps

#script i used in google sheet app scripter
```function doGet(request) {
  var sheet =SpreadsheetApp.openById("sheetid");
  var values =sheet.getActiveSheet().getDataRange().getValues();
  var data=[];
  try{
    var marker_name=request.parameter.marker_name;
    var marker_id=request.parameter.marker_id;
    var x=request.parameter.x;
    var y=request.parameter.y;
    var rowData=sheet.appendRow([marker_name,marker_id,x,y]);

  }catch(exc){

  }

  for (var i =1;i<values.length;i++)
  {
    var row=values[i];
    var getdata ={};
getdata['marker_name']=row[0]
getdata['marker_id']=row[1]
getdata['x']=row[2]
getdata['y']=row[3]

data.push(getdata);

  }
  return ContentService.createTextOutput(JSON.stringify(data)).setMimeType(ContentService.MimeType.JSON);
  }
```
