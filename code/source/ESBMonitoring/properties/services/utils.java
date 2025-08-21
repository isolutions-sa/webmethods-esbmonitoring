package ESBMonitoring.properties.services;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.*;
import java.io.*;
import com.wm.lang.ns.NSService;
import java.util.Stack;
import com.wm.lang.ns.*;
import com.wm.util.Base64;
import com.wm.util.coder.IDataBinCoder;
import com.wm.util.coder.XMLCoderWrapper;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void getProperty (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getProperty)>> ---
		// @sigtype java 3.5
		// [i] field:0:required property
		// [o] field:0:required propertyValue
		IDataCursor cursor = pipeline.getCursor(); 
		
		if (cursor.first("property"))
		{
		  String property = (String)cursor.getValue();
		  String propertyValue = System.getProperty(property);
		  if (propertyValue != null && propertyValue.length() > 0)
		  { 
		    IDataUtil.put(cursor, "propertyValue", propertyValue);
		  }
		}
		
		cursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void sleep (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(sleep)>> ---
		// @sigtype java 3.5
		// [i] field:0:required duration
		IDataCursor cursor = pipeline.getCursor();
		int duration = 0;  
		
		if (cursor.first("waitTime"))
		{
			duration = Integer.valueOf((String) cursor.getValue()).intValue();
		}
		try {
		    Thread.sleep(duration);
		} catch(InterruptedException ex) {
		    Thread.currentThread().interrupt();
		}
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	static Reader getReader(IDataCursor cursor, String key)
	{
	  Reader reader = null;
	  if (cursor.first(key))
	  {
	    Object o = cursor.getValue();
	    if (o == null)
	    {
	      reader = new StringReader("");
	    }
	    else if (o instanceof BufferedReader)
	    {
	      reader = (BufferedReader)o;
	    }
	    else if (o instanceof Reader)
	    {
	      reader = new BufferedReader((Reader)o);
	    }
	    else if (o instanceof InputStream)
	    {
	      reader = new BufferedReader(new InputStreamReader((InputStream)o));
	    }
	    else if (o instanceof String)
	    {
	      reader = new BufferedReader(new StringReader((String)o));
	    }
	    else if (o instanceof byte[])
	    {
	      reader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream((byte[])o)));
	    }
	  }
	  return reader;
	
	}
	
	static Writer getWriter(IDataCursor cursor, String key)
	{
	  Writer writer = new StringWriter();
	  if (cursor.first(key))
	  {
	    Object o = cursor.getValue();
	    if (o == null)
	    {
	      return writer;
	    }
	    else if (o instanceof BufferedWriter)
	    {
	      writer = (BufferedWriter)o;
	    }
	    else if (o instanceof Writer)
	    {
	      writer = new BufferedWriter((Writer)o);
	    }
	    else if (o instanceof OutputStream)
	    {
	      writer = new BufferedWriter(new OutputStreamWriter((OutputStream)o));
	    }
	  }
	  return writer;
	
	}
		
		
	// --- <<IS-END-SHARED>> ---
}

