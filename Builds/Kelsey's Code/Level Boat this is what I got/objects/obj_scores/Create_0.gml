/// @description Insert description here
// You can write your code in this editor
num = 10;

names = [];
scores = [];
for(var i = 0; i<num; i++){
	names[i] = "";
	scores[i] = "";
}

#region request scores from leaderboard
http_get("http://gmscoreboard.com/handle_score.php?tagid=5ced51769befa15590567582415&getscore=10")
#endregion
