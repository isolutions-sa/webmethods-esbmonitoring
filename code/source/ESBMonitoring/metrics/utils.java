package ESBMonitoring.metrics;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.*;
import java.text.*;
import java.util.Calendar;
import java.io.*;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void getYDateTimestamp (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getYDateTimestamp)>> ---
		// @sigtype java 3.5
		// [o] field:0:optional YDateTimestamp
		/* Service Name: getYDateTimestamp
		 * Description: 
		 * getYDateTimestamp service is used to retrieve the current timestmap for Yesterday.
		 */
		
		// pipeline
		
		  DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss.SSS");
		
		    // Create a calendar object with today date. Calendar is in java.util package.
		    Calendar calendar = Calendar.getInstance();
		
		    // Move calendar to yesterday
		    calendar.add(Calendar.DATE, -1);
		
		    // Get current date of calendar which point to the yesterday now
		    Date yesterday = calendar.getTime();
		
		
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "YDateTimestamp", dateFormat.format(yesterday).toString() );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

