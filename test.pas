uses GraphAbc;

procedure ImFill;
begin
  var width_of_picture := Window.Width;
  var height_of_picture := Window.Height;
  //var source_pic_num:integer;
  // While true do
  //  begin
  //source_pic_num := ReadInteger($'Which picture should i choose?{newline}(I have pics from 1 to 5)');
  //if (source_pic_num > 0) and (source_pic_num < 6) then break;
  //end;
  
  Window.Maximize;
  
  while true do
  begin
    Window.Clear;
    
    var source_pic_num: integer := random(1, 5);
    var source_pic_name := 'img' + source_pic_num + '.jpg';
    var source_pic := Picture.Create(pic_name);
    var picture := Picture.Create(width_of_picture, height_of_picture);
    var (x, y) := (0, 0);
    
    picture.CopyRect(Rect(0, 0, width_of_picture, height_of_picture), source_pic, Rect(0, 0, source_pic.Width, source_pic.Height));
    
    loop Window.Height div height_of_picture do
    begin
      loop Window.Width div width_of_picture do
      begin
        picture.Draw(x, y);
        x += width_of_picture;
      end;
      x := 0;
      y += height_of_picture;
    end;
    sleep(3000);
    height_of_picture := height_of_picture div 2;
    width_of_picture := width_of_picture div 2;
  end;
end;

begin
  ImFill;
end.