package ESBMonitoring.logging;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.io.ByteArrayInputStream;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.stream.StreamResult;
import org.xml.sax.InputSource;
import java.io.StringWriter;
import javax.xml.transform.TransformerFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.*;
import javax.xml.transform.dom.DOMSource;
import java.util.*;
// --- <<IS-END-IMPORTS>> ---

public final class userInterface

{
	// ---( internal utility methods )---

	final static userInterface _instance = new userInterface();

	static userInterface _newInstance() { return new userInterface(); }

	static userInterface _cast(Object o) { return (userInterface)o; }

	// ---( server methods )---




	public static final void stylePayloadXML (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(stylePayloadXML)>> ---
		// @sigtype java 3.5
		// [i] field:0:required PAYLOADIn
		// [o] field:1:required LINES
		/* Service Name: stylePayloadXML 
		 * Description:
		 * stylePayloadXML service is used to indent payload XML 
		 * and print them in multiple lines
		 */
		
		
		
		// pipeline
				IDataCursor pipelineCursor = pipeline.getCursor();
					String	PAYLOADIn = IDataUtil.getString( pipelineCursor, "PAYLOADIn" );
					String PAYLOAD = "";
					int indent = 1;
					 
					
				pipelineCursor.destroy();
				try {
		    Document document = DocumentBuilderFactory.newInstance()
		            .newDocumentBuilder()
		            .parse(new InputSource(new ByteArrayInputStream(PAYLOADIn.getBytes("utf-8"))));
		 
		    XPath xPath = XPathFactory.newInstance().newXPath();
		    NodeList nodeList = (NodeList) xPath.evaluate("//text()[normalize-space()='']",
		                                                  document,
		                                                  XPathConstants.NODESET);
		 
		    for (int i = 0; i < nodeList.getLength(); ++i) {
		        Node node = nodeList.item(i);
		        node.getParentNode().removeChild(node);
		    }
		 
		    Transformer transformer = TransformerFactory.newInstance().newTransformer();
		    transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
		    transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
		    transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		    transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
		 
		    StringWriter stringWriter = new StringWriter();
		    StreamResult streamResult = new StreamResult(stringWriter);
		 
		    transformer.transform(new DOMSource(document), streamResult);
		 
		    PAYLOAD = stringWriter.toString();
		    
		   
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
				
				
				String Lines[] = PAYLOAD.split("\\r?\\n");
				// pipeline
				IDataCursor pipelineCursor_1 = pipeline.getCursor();
				IDataUtil.put( pipelineCursor_1, "LINES", Lines );
				pipelineCursor_1.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

