function ShaguColor () 
    function ColorPickerFrame.func (r,g,b,a)
        local r,g,b, _ = ColorPickerFrame:GetColorRGB()
        local hex = string.format("%02x%02x%02x", r*255, g*255, b*255)
        if(not scm) then 
            scm = SendChatMessage; 
        end; 
    
        function SendChatMessage(msg, type, lang, chan) 
            scm("\124cff" .. hex .. "\124Hitem:19:0:0:0:0:0:0:0\124h" ..msg.."\124h\124r", type, lang, chan);
        end;
    end

    function ColorPickerFrame.cancelFunc ()
        if(not scm) then 
            scm = SendChatMessage; 
        end; 
        
        function SendChatMessage(msg,type,lang,chan) 
            scm(msg,type,lang,chan);
        end;
    end

    ColorPickerFrame:Show();
    ColorPickerFrame:Show();
end
