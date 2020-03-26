local scm
-- some servers require a whitespace prefix in front of items
-- /run SCPREFIX=" "
SCPREFIX = ""

function ShaguColor ()
  function ColorPickerFrame.func (r,g,b,a)
    local r,g,b, _ = ColorPickerFrame:GetColorRGB()
    local hex = string.format("%02x%02x%02x", r*255, g*255, b*255)
    scm = scm or SendChatMessage
    function SendChatMessage(msg, type, lang, chan)
      scm(SCPREFIX.."|cff" .. hex .. "|Hitem:6948:0:0:0|h" .. msg .. "|h|r", type, lang, chan);
    end
  end

  function ColorPickerFrame.cancelFunc ()
    SendChatMessage = scm or SendChatMessage
  end

  ColorPickerFrame:Show();
end

SLASH_SHAGUCOLOR1, SLASH_SHAGUCOLOR2 = "/scol", "/shagucolor"
SlashCmdList["SHAGUCOLOR"] = ShaguColor
