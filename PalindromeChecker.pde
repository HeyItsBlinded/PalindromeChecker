import processing.core.PApplet;

public class Sketch extends PApplet {
  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      if(isPalindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean isPalindrome(String sWord){
  if(sWord.equals(reverse(sWord)))
    return true;
  else
    return false;
}
  public String reverse(String sWord){
  String result = new String();
  for(int i = sWord.length() - 1; i >= 0; i--)
    result = result + sWord.charAt(i);
  return result;
}
}
