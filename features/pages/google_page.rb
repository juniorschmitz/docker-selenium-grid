class GooglePage < BasePage
  def load
    visit('/')
  end

  def search(string)
    find('input.gLFyf').set(string)
    find('.aajZCb .gNO89b').click
  end

  def results
    find_all('.LC20lb')
  end
end
