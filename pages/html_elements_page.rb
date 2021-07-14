require 'watir'
require 'webdrivers'

# Initialize the browser 
browser = Watir::Browser.new :chrome

# Navigate to Page
browser.goto 'ultimateqa.com/simple-html-elements-for-automation/'

# In the Radio Buttons section, select the Other radio button and 
# output the state to the console
radio_buttons = browser.radio_set(name: 'gender')
radio_buttons.select('other')
puts "The gender radio button thats selected: #{radio_buttons.value}"

# In the dropdown section select Audi from the list
# I'm not a fan of xpath - i'd ask the developers for an identifier of some sort here
# If it can't get an id then revisit this approach
dropdown = browser.select_list(xpath: '//*[@id="post-909"]//select')
dropdown.select 'Audi'
puts "dropdown box selection: #{dropdown.value}"

# In the Table section, traverse the Table with unique ID and 
# output the Title and Salary values to the console
unique_id_table = browser.table(id: 'htmlTableId')

# iterate over the table, don't print the column headers, and skip the middle row
unique_id_table.rows.each do |row|
    rowdata = String.new
    row.cells.each do |cell|
        if cell.text != cell.column_header && cell.cellindex != 1
            rowdata += cell.text + "  "
        end
    end
    puts rowdata
end
