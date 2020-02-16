int map_width = width/sqw, map_height = height/sqh;

public class Map{
  protected boolean[][] wall = new boolean[map_height][map_width];
  protected int[][] exit;
  
  //bg = loadImage("src/backgroundimage/map1.jpg");
  public Map(){
  }
  
  public Map(int exit_count){
    exit = new int[exit_count][exit_count];
  }
  
  public void map_init(int exit_count){
    exit = new int[exit_count][exit_count];
    
    for(int i = 0; i < map_height; i++){
      for(int j = 0; j < map_width; j++){
        this.wall[i][j] = false;
      }
    }
  }
  
  public boolean isWall(int x, int y){
    return this.wall[y][x];
  }
  
  public void set_wall(int x, int y){
    this.wall[y][x] = true;
  }
  
  public void del_wall(int x, int y){
    this.wall[y][x] = false;    
  }
}
