public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  for(int z = 0; z < lines.length; z++) {
      lines[z] = lines[z].replaceAll("\\s", "").toLowerCase();
    }
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(word.equals(reverse(word))==true) return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--) {
      sNew += str.charAt(i);
    }
    return sNew;
}
