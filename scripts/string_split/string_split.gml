/// @description string_split(str, sep)
/// @function string_split
/// @param str {string}
/// @param sep {string}

// string_split("cat,dog,two word", ",") = "cat", "dog", "two word"
// string_split("foo, poo, hoo ", ",") = "foo", "poo", "hoo "

if string_count(argument1, argument0) <= 0
	return array_create(1, 0) // 1-sized array contains only 'zero'

var count = 0;
var result;

result[0] = argument0;

while (true) {
 var position = string_pos(argument1, result[count]);
 
 if (position <= 0)
  break;
 
 result[count + 1] = string_copy(result[count], position + 1, string_length(result[count]) - position);
 result[count] = string_copy(result[count], 1, position - 1);
 
 count++;
}

return result;
