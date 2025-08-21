package ESBMonitoring.metrics;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.*;
// --- <<IS-END-IMPORTS>> ---

public final class services

{
	// ---( internal utility methods )---

	final static services _instance = new services();

	static services _newInstance() { return new services(); }

	static services _cast(Object o) { return (services)o; }

	// ---( server methods )---




	public static final void calculateDateDifference (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(calculateDateDifference)>> ---
		// @sigtype java 3.5
		// [i] field:0:required STimeStamp
		// [i] field:0:required ETimeStamp
		// [o] field:0:required dateDifferenceSeconds
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	STimeStamp = IDataUtil.getString( pipelineCursor, "STimeStamp" );
			String	ETimeStamp = IDataUtil.getString( pipelineCursor, "ETimeStamp" );
		pipelineCursor.destroy();
		
		//HH converts hour in 24 hours format (0-23), day calculation
			SimpleDateFormat format = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss.SSS");
		 
			Date d1 = null;
			Date d2 = null;
			 
			try{
			d1 = format.parse(STimeStamp);
			d2 = format.parse(ETimeStamp);
			}
			catch (Exception e)
			{
			}
			 
			//in milliseconds
			double diff = d2.getTime() - d1.getTime();
		 
			double diffSeconds = diff/1000;
		 
		
		// pipeline
		IDataCursor pipelineCursor_1 = pipeline.getCursor();
		IDataUtil.put( pipelineCursor_1, "dateDifferenceSeconds", new DecimalFormat("#.##").format(diffSeconds));
		
		pipelineCursor_1.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

