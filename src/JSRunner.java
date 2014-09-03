/**
 * 
 */
package com.stc.io;

import java.io.FileNotFoundException;
import java.io.FileReader;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

/**
 * @author jverderber
 *
 */
public class JSRunner {

	/**
	 * @throws ScriptException 
	 * @throws FileNotFoundException 
	 * 
	 */
	public JSRunner(String args[]) throws Exception 
	{
		ScriptEngineManager sem = new ScriptEngineManager();
		ScriptEngine se = sem.getEngineByName("JavaScript");
		FileReader fr = new FileReader(args[0]);
		Object r = se.eval(fr);
		fr.close();
		System.out.println(""+r);
	}

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		new JSRunner(args);

	}

}
