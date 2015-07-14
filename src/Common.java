import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

import javax.lang.model.element.Element;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/**
 * Helper class for manipulating XML file / content. 
 */
public class Common {

	/**
	 * Returns the content of the XML file as a DOM.
	 * @param xmlFileToRead
	 * @return
	 * @throws IOException
	 * @throws ParserConfigurationException 
	 */
	public static Document readXmlDocument(File xmlFileToRead) throws Exception {
    	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
    	return dBuilder.parse(xmlFileToRead);
	}
	
	/**
	 * Returns the content of the file without carriage returns and with trimmed lines.
	 * @return
	 */
	public static String readFileContent(File fileToRead) throws Exception{
		StringBuffer fileContent = new StringBuffer();
		BufferedReader reader = new BufferedReader(new FileReader(fileToRead));
		
		// keep all remaingin lines
		for (String line = reader.readLine(); line != null; line = reader.readLine()) {
			fileContent.append(line.trim());
		}
		reader.close();
		
		return fileContent.toString();
	}
	
	/**
	 * Returns the content of the XML as a DOM.
	 * @param xmlContent
	 * @return
	 * @throws Exception
	 */
	public static Document readXmlDocument(String xmlContent) throws Exception {
    	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
    	InputSource is = new InputSource(new StringReader(xmlContent));
    	return dBuilder.parse(is);
	}
	
	/**
	 * Removes soap header from document.
	 * @param enveloppeSoap
	 */
	public static boolean removeSoapHeader(Document envelopeSoap) {
		// envelope
		Node envelope = envelopeSoap.getFirstChild();
		
		// header, body
		NodeList list = envelope.getChildNodes();
		for (int i = 0; i < list.getLength(); ++i) {
			Node node = list.item(i);
			if (node.getNodeName().contains("Header")) {
				envelope.removeChild(node);
				return true;
			}
		}
		
		return false;
	}
	
	/**
	 * Returns body node from document.
	 * @param envelopeSoap
	 * @return
	 */
	public static Node getBodyNode(Document envelopeSoap) {
		// envelope
		Node envelope = envelopeSoap.getFirstChild();
		
		// header, body
		NodeList list = envelope.getChildNodes();
		for (int i = 0; i < list.getLength(); ++i) {
			Node node = list.item(i);
			if (node.getNodeName().contains("Body")) {
				return node;
			}
		}
		
		return null;
	}
	
	/**
	 * Returns the XML node as String.
	 * @param xmlNode
	 * @return
	 */
	public static String transformXmlToString(Node xmlNode) throws Exception {
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(xmlNode);
		StringWriter writer = new StringWriter();
		StreamResult result =  new StreamResult(writer);
		transformer.transform(source, result);
		String toReturn = writer.toString();
		return toReturn;
	}
	
	/**
	 * Returns the XML node as String and remove <?xml version="1.0" ...>.
	 * @param xmlNode
	 * @return
	 */
	public static String transformXmlToStringWithoutXMLFirstLine(Node xmlNode) throws Exception {
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(xmlNode);
		StringWriter writer = new StringWriter();
		StreamResult result =  new StreamResult(writer);
		transformer.transform(source, result);
		String toReturn = writer.toString();
				
		// remove first line
		if (toReturn.startsWith("<?xml")) {
			toReturn = toReturn.substring(toReturn.indexOf(">") + 1);
		}
		
		return toReturn;
	}
	
	/**
	 * Adds xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" to body element.
	 * 
	 * Input: <s:Body>
	 * Output: <s:Body xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
	 * 
	 * This is a dirty hack, it should probably be improved...
	 * 
	 *  
	 * @param xmlContent
	 * @return
	 * @throws Exception
	 */
	public static String addXmlNamsepaceToXmlStringBodyElement(String xmlContent) throws Exception {
		
		if (xmlContent.startsWith("<s:Body>") ) {
			return "<s:Body xmlns:s=\"http://schemas.xmlsoap.org/soap/envelope/\">" + xmlContent.substring("<s:Body>".indexOf(">") + 1);
		}
		
		return xmlContent;
	}
}
