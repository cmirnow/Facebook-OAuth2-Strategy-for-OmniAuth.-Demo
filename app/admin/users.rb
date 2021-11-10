ActiveAdmin.register User do
  permit_params :email,
                :encrypted_password,
                :reset_password_token,
                :reset_password_sent_at,
                :remember_created_at,
                :provider,
                :uid,
                :name,
                :image
  remove_filter :encrypted_password,
                :reset_password_token,
                :reset_password_sent_at,
                :remember_created_at,
                :updated_at,
                :image
  actions :all, except: [:new]

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :provider
    column :uid
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :provider
      f.input :uid
      f.input :name
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :created_at
      row :provider
      row :uid
      row :name
      row :image
    end
  end
end
