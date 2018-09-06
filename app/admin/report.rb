ActiveAdmin.register_page "report" do

  menu priority: 3,parent: 'Reports', label: 'Sales Report'

  page_action :generate_report, method: :post do
    # binding.pry
    t = Time.now
   report = Spreadsheet.open 'Sales_#{t}.xls'
   #report = Spreadsheet::Workbook.new
   sheet = report.create_worksheet :name => 'Sales Report'
   
   sheet.row(0).concat %w{Name Country Acknowlegement}
   sheet.update_row 4, 'Hannes Wyss', 'Switzerland', 'Author'
   report.write "Sales_#{t}.xls"
   send_file "Sales_#{t}.xls", :type => "application/vnd.ms-excel", :filename => "sales_#{t}.xls", :stream => false
   File.delete("Sales_#{t}.xls")
   #redirect_to admin_report_path
  end

  content do
    render 'admin/report/form'
  end

end