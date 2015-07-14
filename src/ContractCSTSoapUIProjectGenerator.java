import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.w3c.dom.Document;

public class ContractCSTSoapUIProjectGenerator extends BaseSoapUIProjectGenerator {
	
	/**
	 * Request / Response file prefix.
	 */
	private static final String STR_FILE_PREFIX = "ose-contract-cst-1-contractservices";
	
	/**
	 * Template name.
	 */
	private static final String STR_TEMPLATE_NAME = "ContractCSTSoapUIProjectTemplate.ftl";
	
	/**
	 * Constructor.
	 * @param projectName
	 * @param envName
	 * @param endpoint
	 * @param user
	 * @param password
	 * @throws IOException
	 */
	public ContractCSTSoapUIProjectGenerator(String projectName, String envName, String endpoint, String user, String password) throws IOException {
		super(projectName, envName, endpoint, user, password, STR_TEMPLATE_NAME, STR_FILE_PREFIX);
	}
	
	/**
	 * Returns a root Map to feed the templates
	 * @return The root Map to feed to the templates.
	 */
	protected Map<String, Object> buildTemplateContent(File[] requestFiles) {

		// Map to return
		Map<String, Object> root = new HashMap<>();
		List<Map<String, Object>> requests = new ArrayList<>();
		
		root.put("ProjectName", this.projectName + "_" + this.envName);
		root.put("Endpoint", this.endpoint);
		root.put("Token", this.user);
		root.put("Password", this.password);
		root.put("Requests", requests);
		
		// loop on all request files
		for (File requestFile : requestFiles) {
			
			// identify response file name
			String requestfileName = requestFile.getName();
			
			// file name parts : 
			// 		requestfileNameParts[0] : prefix
			// 		requestfileNameParts[1] : request id
			// 		requestfileNameParts[2] : request
			// 		requestfileNameParts[3] : timestamp
			String[] requestfileNameParts = requestfileName.split("_");
			
			String responsefileName = requestfileNameParts[0] + "_" + requestfileNameParts[1] + "_response_" + requestfileNameParts[3];
			File responseFile = new File("sources/" + this.projectName, responsefileName);
			
			System.out.println(responseFile.getName() + " exists [" + responseFile.exists() + "]");			
			if (responseFile.exists() && requestFile.exists()) {
				
				try {
					// retrieve XML content from requests and responses 
					String requestFileContent = Common.readFileContent(requestFile);
					String responseFileContent = Common.readFileContent(responseFile);
					
					Document requestDocument = Common.readXmlDocument(requestFileContent);
					Document responseDocument = Common.readXmlDocument(responseFileContent);
					Common.removeSoapHeader(requestDocument);

					String requestPayload = Common.transformXmlToStringWithoutXMLFirstLine(requestDocument);
					String responseBodyPayload = Common.transformXmlToStringWithoutXMLFirstLine(Common.getBodyNode(responseDocument));
					
					// HACK : add  xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" to body element
					responseBodyPayload = Common.addXmlNamsepaceToXmlStringBodyElement(responseBodyPayload);

					// generate requests
					Map<String, Object> request = new HashMap<>();
					request.put("RequestName", "Request_" + requestfileNameParts[1]);
					request.put("RequestPayload", requestPayload);
					request.put("ResponseBodyPayload", responseBodyPayload);
					requests.add(request);
				} catch (Exception e) {
					System.out.println("Aouch: " + e);
					e.printStackTrace();
				}
			}
		}
		
		return root;
	}
}