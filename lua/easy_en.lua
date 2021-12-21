local function append_blank_filter(input)
   for cand in input:iter() do
      if (not cand.comment:find("☯")) then
         cand.text = cand.text .. " "
         yield(cand)
      end
   end
end

return { append_blank_filter = append_blank_filter }
