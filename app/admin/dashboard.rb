ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    div do
      render partial: 'admin/dashboard_image'
    end

    # columns do
    #   column do
    #     panel "Info" do
    #       para "Welcome to School Managment System Admin"
    #       para "Total Student Count: #{Student.all.count}"
    #       para "Total Teachers Count: #{Teacher.all.count}"
    #       para "Total Classes Count: #{SchoolClass.all.count}"
    #     end
    #   end
    # end
  end 
end
