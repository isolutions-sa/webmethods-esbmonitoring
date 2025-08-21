package ESBMonitoring;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.InvokeState;
import com.wm.app.b2b.server.ServerAPI;
import com.wm.app.b2b.server.*;
// --- <<IS-END-IMPORTS>> ---

public final class access

{
	// ---( internal utility methods )---

	final static access _instance = new access();

	static access _newInstance() { return new access(); }

	static access _cast(Object o) { return (access)o; }

	// ---( server methods )---




	public static final void getCurrentUserNGroup (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getCurrentUserNGroup)>> ---
		// @sigtype java 3.5
		// [o] field:0:required currentUser
		// [o] field:1:required currentGroups
		try { 
			/* Service Name: getCurrentUserNGroup
			 * Description:
			 * getCurrentUserNGroup service is used to retrieve the current user name 
			 * and groups the user belongs to.
			 */
			
			IDataCursor idc = pipeline.getCursor();
			User theUser = InvokeState.getCurrentUser();
			String currentUser = theUser.getName();
			String currentGroups[] = (String[]) (theUser.membershipNames().toArray(new String[0]));
			idc.insertAfter("currentUser", currentUser);
			idc.insertAfter("currentGroups", currentGroups);
			idc.destroy();
		} catch (Exception exc) {
			ServerAPI.logError(exc);
			throw new ServiceException(exc.toString());
		}
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	// merges the contents of the given document into the given pipeline
		public static void merge(IData target, IData source) {
		  if (target != null && source != null) IDataUtil.merge(source, target);
		}
	// --- <<IS-END-SHARED>> ---
}

