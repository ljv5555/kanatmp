import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;



public class JsEval{

  public JsEval(){}
  public JsEval(String[] args)
  {
    String rtn = " ";
    //System.out.println(new java.util.Date()+"");
    for(String arg : args){rtn+=(arg+" ");}
    //System.out.print(rtn);
    ScriptEngineManager sem = new ScriptEngineManager();
    ScriptEngine se = sem.getEngineByName("JavaScript");
    try {
		System.out.print(String.valueOf(se.eval(rtn)));
	} catch (ScriptException e) {
		e.printStackTrace();
	}
  
  }
  public static void main(String[] args)
  {
	  JsEval jse = new JsEval(args);
  }



}
