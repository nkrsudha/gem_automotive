ActiveAdmin.register_page "report" do

  menu priority: 3,parent: 'Reports', label: 'Sales Report'

  page_action :generate_report, method: :post do
   t = Time.zone.now
   report = Spreadsheet::Workbook.new
   sheet = report.create_worksheet :name => 'Sales Report'

   sheet.row(0).replace ['Sl.No','Month','Date','Own/ Co Dealer','Chasis No','Customer Name','Model','CGST','SGST','GST','Before Tax','ExShowRoom Price','Road Tax','T/R charges Helment','Handlin Charges/TCS/Others','Insurance','Permanent Registraion','Extended Warranty','Accessories','Tefflon','Hypothecation Charges','OnRoad Price','Discount','Received as on Tally','Notes','Diffrence','Delivery Location','Executive Name','Financed By','Remarks','Paytm Id','TR. No','CUST PH NO','PAN IF BIG BIKE']
   sheet.update_row 4, 'Hannes Wyss', 'Switzerland', 'Author'
   report.write "Sales_#{t}.xls"
   send_file "Sales_#{t}.xls"
   File.delete("Sales_#{t}.xls")
  end

  content do
    render 'admin/report/form'
  end

end