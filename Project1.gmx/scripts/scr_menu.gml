switch(mpos)
{
    case(1):
    {
        room_goto_next();
        
    }break;
    case(2):
    {
        //nowa gra: aktualny poziom = 0
        var file = file_text_open_write(working_directory+"\save.txt");
        file_text_write_real(file,1);
        file_text_close(file);
        room_goto_next();
        
    }break;
    case(3): 
    {
        file = file_text_open_read(working_directory+"\save.txt");
        var level = file_text_read_real(file);
        room_goto(level);
    }break;
    case(4):
    {
         game_end();

    }break;
    default: break;
}
