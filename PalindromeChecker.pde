public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String temp = new String();
  String finalWord = new String();
  for (int i = 0; i < word.length(); i ++)
  {
    if (word.charAt(i) != ' ')
    {
      temp = temp + word.charAt(i);
    }
  }
    for (int i = 0; i < word.length(); i ++)
    {
      if (Character.isLetter(word.charAt(i)) ==  true)
        {
          finalWord = finalWord + word.charAt(i);
        }
    }

  finalWord = finalWord.toLowerCase();
  for (int i = 0; i < finalWord.length()/2; i ++)
  {
    if (finalWord.charAt(i) != finalWord.charAt(finalWord.length() - 1 - i))
    {
      return false;
    }
  }
  return true;
}