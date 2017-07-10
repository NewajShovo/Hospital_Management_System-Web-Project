

<%
response.expires=-1
dim a(300)
'Fill up array with names
a(1)="Md.Shafiq Newaj Shovo"
a(2)="Md.Badal Miah"
a(3)="Mrs. Anzumanara Begum"
a(4)="Zihadul Kabir Sourav"
a(5)="Sanjib kumar Paul"
a(6)="Nishat Tasnim Niloy"
a(7)="Sumaiya Afrin"
a(8)="Abir Faisal"
a(9)="Mahbubur Rahman Badhon"
a(10)="Sumiya Islam Boby"
a(11)="Shovo"
a(12)="Sabbir"
a(13)="Hasan"
a(14)="Mukhlesur"
a(15)="Shohan"
a(16)="Dilshad"
a(17)="Shimanto"
a(18)="Saadi"




'get the q parameter from URL
q=ucase(request.querystring("q"))

'lookup all hints from array if length of q>0
if len(q)>0 then
  hint=""
  for i=1 to 30
    if q=ucase(mid(a(i),1,len(q))) then
      if hint="" then
        hint=a(i)
      else
        hint=hint & " , " & a(i)
      end if
    end if
  next
end if

'Output "no suggestion" if no hint were found
'or output the correct values
if hint="" then
  response.write("no suggestion")
else
  response.write(hint)
end if
%>
