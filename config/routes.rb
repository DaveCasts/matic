Rails.application.routes.draw do
  
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  root 'static_page#index'
  get 'tour', to: 'static_page#tour'
  get 'policy', to: 'static_page#policy'
  get 'career', to: 'static_page#career'
  get 'team', to: 'static_page#team'
  get 'contact', to: 'static_page#contact'
  get 'service', to: 'static_page#services'

end
