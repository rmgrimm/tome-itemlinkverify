local _M = loadPrevious(...)

local base_use = _M.use

function _M:use(item)
  if not item then return end

  if item.action == "chat-link" then
    game:unregisterDialog(self)
    self:yesnoPopup("Link to Chat", "Really link "..self.object:getName{}, function(ret)
      if ret then
        base_use(self, item)
      end
    end)
  else
    base_use(self, item)
  end
end

return _M
