Rails.application.routes.draw do
  
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  root 'static_page#index'
  get 'tour', to: 'static_page#tour'
  get 'policy', to: 'static_page#policy'

end
