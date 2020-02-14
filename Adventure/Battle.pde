boolean inBattle = false;

void battle_UI(){
  background(0, 0, 83);
  
  fill(66, 100, 100);
  rect(10,10, width/2 - 20, height/2 - 20);
 
  fill(40, 100, 100);
  rect(width/2 + 10, 10, width/2 - 20, height/2 - 20);
  
  fill(80, 80, 100);
  rect(10, height/2 + 10, width/2 - 20, height/2 - 20);
  fill(0,0,100);
  text(p.job.name, 100, height/2 + 100);
  text("HP: " + p.cur_hp + " / " + p.max_hp, 100, height/2 + 200);
  text("MP: " + p.cur_mp + " / " + p.max_mp, 100, height/2 + 300);
 
  fill(14, 100, 100);
  rect(width/2 + 10, height/2 + 10, width/2 - 20, height/2 - 20);
}
