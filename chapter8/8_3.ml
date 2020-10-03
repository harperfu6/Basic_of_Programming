type person_t = {
  name : string; (*名前*)
  height : float; (*身長*)
  weight : float; (*体重*)
  birth_month : int; (*誕生月*)
  birth_day : int; (*誕生日*)
  blood_type : string; (*血液型*)
}

let person1 = {
   name = "浅井"; 
   height = 1.72; 
   weight = 58.5; 
   birth_month = 9; 
   birth_day = 17; 
   blood_type = "A" 
}

let person2 = {
   name = "宮原"; 
   height = 1.63; 
   weight = 55.0; 
   birth_month = 6; 
   birth_day = 30; 
   blood_type = "B" 
}

let person3 = {
   name = "中村"; 
   height = 1.68; 
   weight = 63.0; 
   birth_month = 6; 
   birth_day = 6; 
   blood_type = "O" 
}
