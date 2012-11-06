ActiveAdmin.register Record do

  index do |record|
    column :id
    column :year
    column :month
    column RevenueCode.find(1).name do |record|
      record.actual_values.where(revenue_code_id: 1).inspect
    end
    #RevenueCode.all.each do |rev_code|
    #  column rev_code.name do 
    #    h3 "hello"
    #  end
    #end
  end

  show do |record|
    panel "hello" do
      h3 "foobar!"
      if record.actual_values and record.actual_values.count > 0
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                record.revenue_codes.each do |code|
                  th do
                    code.name
                  end
                end
              end
              tbody do
                tr do
                  record.actual_values.each do |actual_value|
                    td do
                      actual_value.value
                    end
                  end
                end
              end
            end
          end
        end
      else
        h3 "No data."
      end
    end

    attributes_table do
      row :id
      row :year
      row :month
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  sidebar "Record Information", only: [:show, :edit] do
    attributes_table_for record do
      row :id
      row :year
      row :month
      row :created_at
      row :updated_at
    end
  end
end
