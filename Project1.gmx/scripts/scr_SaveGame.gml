if(file_exists("Save.sav")) file_delete("Save.sav");
var SaveFile=file_text_open_write("Save.sav");
var SavedRoom=room;
file_text_write_real(SaveFile,SavedRoom);
file_text_close(SaveFile);
