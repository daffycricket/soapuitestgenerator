import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.List;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public abstract class BaseSoapUIProjectGenerator {

	/**
	 * FreeMarket Configuration instance.
	 */
	protected Configuration config = new Configuration();
	
	/**
	 * Basic auth' user.
	 */
	protected String user;

	/**
	 * Basic auth' password.
	 */
	protected String password;
	
	/**
	 * Endpoint.
	 */
	protected String endpoint;
	
	/**
	 * Environment.
	 */
	protected String envName;
	
	/**
	 * SoapUI project Name.
	 */
	protected String projectName;
	
	/**
	 * Request / Response file prefix.
	 */
	protected String filePrefix; 
	
	/**
	 * Template name;
	 */
	protected String templateName;
	
	/**
	 * Constructor.
	 * @param projectName
	 * @param envName
	 * @param endpoint
	 * @param user
	 * @param password
	 * @param templateName
	 * @param filePrefix
	 * @throws IOException
	 */
	protected BaseSoapUIProjectGenerator(String projectName, String envName, String endpoint, String user, String password, String templateName, String filePrefix) throws IOException {
		super();
		this.initConfiguration();
		this.projectName = projectName;
		this.envName = envName;
		this.endpoint = endpoint;
		this.user = user;
		this.password = password;
		this.templateName = templateName;
		this.filePrefix = filePrefix;
	}

	/**
	 * Initialize configuration.
	 */
	private void initConfiguration() throws IOException {
		config.setDirectoryForTemplateLoading(new File("templates/"));
		config.setObjectWrapper(new DefaultObjectWrapper());
	}
	
	/**
	 * Generates files based upon BillingSIMULSoapUIProjectTemplate.
	 */
	@SuppressWarnings("unchecked")
	public void run() {
		try {
			// list all request files
			File sourceDir = new File("sources/" + projectName);
			File[] requestFiles = sourceDir.listFiles(new FilenameFilter() {
				@Override
				public boolean accept(File directory, String fileName) {
					return fileName.startsWith(filePrefix) && fileName.contains("request") && fileName.endsWith(".xml");
				}
			});
			
			// generate soap ui project
			Map<String, Object> content = this.buildTemplateContent(requestFiles);
			List<Map<String, Object>> requests = (List<Map<String, Object>>)content.get("Requests");
			
			
			FileOutputStream stream = new FileOutputStream(new File("soapUiProjects/" + this.projectName + "_" + this.envName + ".soapui.project.xml"));
			Writer billingSIMULWriter = new OutputStreamWriter(stream, "UTF-8");
			Template billingSIMULtemplate = this.config.getTemplate(this.templateName);
			billingSIMULtemplate.process(content, billingSIMULWriter);
			billingSIMULWriter.flush();
			billingSIMULWriter.close();
			System.out.println("SoapUI project generated with " + requests.size() + " requests");
		}
		catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	/**
	 * Returns a root Map to feed the templates
	 * @return The root Map to feed to the templates.
	 */
	protected abstract Map<String, Object> buildTemplateContent(File[] requestFiles);
	
//	/**
//	 * Returns a root Map to feed the templates
//	 * @return The root Map to feed to the templates.
//	 */
//	private Map<String, Object> buildTemplateContent(File[] requestFiles) {
//
//		// Map to return
//		Map<String, Object> root = new HashMap<>();
//		List<Map<String, Object>> requests = new ArrayList<>();
//		
//		root.put("ProjectName", this.projectName + "_" + this.envName);
//		root.put("Endpoint", this.endpoint);
//		root.put("Token", this.user);
//		root.put("Password", this.password);
//		root.put("Requests", requests);
//		
//		// loop on all request files
//		for (File requestFile : requestFiles) {
//			
//			// identify response file name
//			String requestfileName = requestFile.getName();
//			
//			// file name parts : 
//			// 		requestfileNameParts[0] : prefix
//			// 		requestfileNameParts[1] : request id
//			// 		requestfileNameParts[2] : request
//			// 		requestfileNameParts[3] : timestamp
//			String[] requestfileNameParts = requestfileName.split("_");
//			
//			String responsefileName = requestfileNameParts[0] + "_" + requestfileNameParts[1] + "_response_" + requestfileNameParts[3];
//			File responseFile = new File("sources/" + this.projectName, responsefileName);
//			
//			System.out.println(responseFile.getName() + " exists [" + responseFile.exists() + "]");			
//			if (responseFile.exists() && requestFile.exists()) {
//				
//				try {
//					// retrieve XML content from requests and responses 
//					String requestFileContent = Common.readFileContent(requestFile);
//					String responseFileContent = Common.readFileContent(responseFile);
//					
//					Document requestDocument = Common.readXmlDocument(requestFileContent);
//					Document responseDocument = Common.readXmlDocument(responseFileContent);
//					Common.removeSoapHeader(requestDocument);
//
//					String requestPayload = Common.transformXmlToStringWithoutXMLFirstLine(requestDocument);
//					String responseBodyPayload = Common.transformXmlToStringWithoutXMLFirstLine(Common.getBodyNode(responseDocument));
//					
//					// HACK : add  xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" to body element
//					responseBodyPayload = Common.addXmlNamsepaceToXmlStringBodyElement(responseBodyPayload);
//
//					// genera
//					Map<String, Object> request = new HashMap<>();
//					request.put("RequestName", "Request_" + requestfileNameParts[1]);
//					request.put("RequestPayload", requestPayload);
//					request.put("ResponseBodyPayload", responseBodyPayload);
//					requests.add(request);
//				} catch (Exception e) {
//					System.out.println("Aouch: " + e);
//					e.printStackTrace();
//				}
//			}
//		}
//		
//		return root;
//	}
	
//	/**
//	 * Returns the content of XML file. Not very strong algorithm....
//	 * To refactor into a helper class.
//	 * @param toRead
//	 * @return
//	 * @throws IOException
//	 */
//	private String readXmlPayload(File toRead) throws IOException {
//		StringBuffer fileContent = new StringBuffer();
//		BufferedReader reader = new BufferedReader(new FileReader(toRead));
//		
//		// make sure to remove xml markup from first line
//		String line = reader.readLine();
//		if (line.startsWith("<?xml version=\"1.0\" encoding=\"UTF-8\"?>")) {
//			line = line.substring("<?xml version=\"1.0\" encoding=\"UTF-8\"?>".length());
//		}
//		if (line != null && line.trim().length() > 0) {
//			fileContent.append(line.trim());
//		}
//		
//		// skip lines 2 to 4, we don't want any header
//		reader.readLine();
//		reader.readLine();
//		reader.readLine();
//		
//		// keep all remaingin lines
//		for (line = reader.readLine(); line != null; line = reader.readLine()) {
//			fileContent.append(line.trim());
//		}
//		reader.close();
//		
//		return fileContent.toString();
//	}
}