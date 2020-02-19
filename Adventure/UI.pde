class UI{
  float window_width, window_height;
  float margin_percent = 0.1, dis_percent = 0.1;
  float UI_width, UI_height, UI_dis;
  int UI_count;
  float vertical_margin, horizontal_margin;
  
  public UI(int x){
    this.UI_count = x;
  }
  
  public void set_UI_count(int x){
    this.UI_count= x;
  }
  
  public void UI_stats_init(float w, float h){
    this.window_width = w;
    this.window_height = h;
    
    this.UI_dis = window_width * dis_percent;
    this.vertical_margin = window_width * margin_percent / 2.0;
    this.horizontal_margin = window_height * margin_percent / 2.0;
    
    this.UI_width = (window_width - (UI_count - 1) * UI_dis - (horizontal_margin * 2.0)) / UI_count;
    this.UI_height = window_height - (vertical_margin * 2.0);
  }
}
