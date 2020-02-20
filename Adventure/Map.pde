int map_width = width/sqw, map_height = height/sqh;
int maproom; 

Map map = new Map();

            


 public class Map{
  
  
  protected boolean[][] wall = new boolean[map_height][map_width];
  public boolean[][] npc = new boolean[map_height][map_width];
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
        this.npc[i][j] = false;
      }
    }
    
    this.npc[10][20] = true;
  }
  
  public int get_map_room(){
    return maproom;
  }
  
  
  public void drawmap(int mapid){
    
    background(0);
    
    for(int i = 0; i < map_height; i++){
      for(int j = 0; j < map_width; j++){
        if(this.npc[i][j]){
          fill(0,100,100);
          rect(j * sqw, i * sqh, sqw, sqh);
        }
      }
    }
    
  switch(mapid){
      case 1:
        bg = loadImage("src/backgroundimage/map1.png");
        
        room = 2;
        
        maproom = room;        
        
      break;
      
      case 2:
      
      break;
  
  }                //close switch map according to mapid(can not use room firstly)
}                    // close drawmap() 
  
  public boolean isWall(int x, int y){
    return this.wall[y][x];
  }
  
  public void set_wall(int x, int y){
    this.wall[y][x] = true;
  }
  
  public void del_wall(int x, int y){
    this.wall[y][x] = false;    
  }
  
  public boolean is_npc(int x, int y){
    return this.npc[y][x];
  }
  
  public void set_npc(int x, int y){
    this.npc[y][x] = true;
  }
  
  public void del_npc(int x, int y){
    this.npc[y][x] = false;    
  }
  
  void isBoundary(){
  
  if(left){
  if(p[0].charX == -sqw){
      left = false;
      p[0].charX += sqw;
      steps--;
    }
  }
  
  if(right){
  if(p[0].charX == width){
    
      right = false;
      p[0].charX -= sqw;
      steps--;
    }
  }
  
  if(up){
  if(p[0].charY == -sqh){
    
      up = false;
      p[0].charY += sqh;
      steps--;
    }
  }
  
  if(down){
  if(p[0].charY == height){
    
      down = false;
      p[0].charY -= sqh;
      steps--;
    }    
  }
  
}                    //close isBoundary
  
  
}
