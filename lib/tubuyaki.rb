# frozen_string_literal: true

require 'tk'

begin
window = TkRoot.new{
title 'つぶやき！'
resizable [0,0]
}

window1 = TkToplevel.new{
title 'ぼやきったー！'
}
    
TkLabel.new(nil,
:text => "ひとりごと、メモ、伝言に最適！",
:fg => "green").pack

entry = TkEntry.new.pack('side'=>'left')

c = TkButton.new(:text => "つぶやき").pack('fill'=>'x',"padx"=>2.5,"pady"=>2.5)

c.command proc {

 saikoro = Random.rand(6)

 case saikoro

 when 4 then
 TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "yellow").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
 when 3 then
 TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "white").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
 when 2 then
 TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "black").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

 when 1 then
 TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "green").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

 when 0 then
 TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "red").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

 else
   TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "blue").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

end
}

Tk.mainloop

rescue Exception => e
# puts e.backtrace
end
