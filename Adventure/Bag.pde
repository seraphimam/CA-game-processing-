Bag bag = new Bag(8, 5);
boolean inBag = false;
boolean  bagopt = false;

class Bag{
  public int[][] inv;
  public int row, col;
  int UI_width, UI_height, UI_dis;
  int vertical_margin, horizontal_margin;
  float square_width, square_height, vs, hs;  
  
  public Bag(int row, int col){
    inv = new int[row][col];
    this.row = row;
    this.col = col;
    UI_width = 500;
    UI_height = 800;
    UI_dis = 100;
    vertical_margin = (height - UI_height)/2;
    horizontal_margin = (width - 2*UI_width - UI_dis)/2;
    
  }

  public void PropertyPanel(){
    noStroke();
    fill(0);
    
    rect(horizontal_margin, vertical_margin, UI_width, UI_height);
  
  }

  public void BagPanel(){
    noStroke();
    fill(60, 100, 100);
    
    rect((width + UI_dis)/2, vertical_margin, UI_width, UI_height);
  
  }

  public void BagSquare(){
    
    
    square_width = (float)UI_width / (float)(col+((col+1)/2.0));
    square_height = (float)UI_height / (float)(row+((row+1)/2.0));
    vs = square_height / 2;
    hs = square_width / 2;
    
    noStroke();
    fill(0, 0, 100);
    
    for(int i = 0; i < row; i++){
      for(int j = 0; j < col; j++)
      {
        image(item[j%3], (j+1)*hs + (j*square_width) + (width + UI_dis)/2, (i+1)*vs + (i * square_height) + vertical_margin, square_width, square_height);
      }
    }
  }
  
  public void display_bag(){
    PropertyPanel();
    BagPanel();
    BagSquare();
  }
}
