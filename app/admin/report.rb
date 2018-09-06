ActiveAdmin.register_page "report" do

  menu priority: 3,parent: 'Reports', label: 'Sales Report'

   page_action :generate_report, method: :post do
     # Data retriveal
     sales = Sale.all
     if params[:show_room_id].present?
      sales = sales.where(show_room_id: params[:show_room_id].to_i)
     end

     if params[:from].present?
      sales = sales.where("created_at > ?", params[:from].to_time.strftime("%d/%m/%Y"))
     end

     if params[:to].present?
      sales = sales.where("created_at < ?", params[:to].to_time.strftime("%d/%m/%Y") )
     end

     if params[:bike_id].present?
      sales = sales.where(bike_id: params[:bike_id].to_i)
     end

     t = Time.zone.now.strftime('%d-%m-%Y %H-%M')
     report = Spreadsheet::Workbook.new
     sheet = report.create_worksheet :name => 'Sales Report'
     sheet.update_row 0, 'Sl.No','Month','Date','Own/ Co Dealer','Chasis No','Customer Name','Model','CGST','SGST','GST','Before Tax','ExShowRoom Price','Road Tax','T/R charges Helment','Handlin Charges/TCS/Others','Insurance','Permanent Registraion','Extended Warranty','Accessories','Tefflon','Hypothecation Charges','OnRoad Price','Discount','Received as on Tally','Notes','Diffrence','Delivery Location','Executive Name','Financed By','Remarks','Paytm Id','TR. No','CUST PH NO','PAN IF BIG BIKE'
     
     sales.each_with_index do |s,index|
      sheet.update_row index+1, index+1,s.created_at.strftime("%^B"),s.created_at.strftime('%d-%m-%Y'),s.sales_type == 1 ? 'OWN' : 'Co Dealer',s.chasis_no,s.customer.name,s.bike.model,s.bike.cgst,s.bike.sgst,s.bike.gst,s.bike.price_wo_tax,s.bike.ex_price,s.bike.road_tax,'','',s.bike.insurance,s.bike.registration,s.bike.ext_warranty,s.bike.accessories,s.bike.tefflon,s.bike.hypothecation,s.bike.onroad_price,s.discount,s.received_amount,s.notes,s.diffrence,s.delivery_location,s.executive_name,s.financed_by,s.notes,'','',s.customer.mobile,s.customer.id_number
     end

     spreadsheet = StringIO.new 
     report.write spreadsheet 
     send_data spreadsheet.string, :filename => "Sales_#{t}.xls", :type =>  "application/vnd.ms-excel"
  end

  content do
    render 'admin/report/form'
  end

end