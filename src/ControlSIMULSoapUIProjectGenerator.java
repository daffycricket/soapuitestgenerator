import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import freemarker.template.Template;

public class ControlSIMULSoapUIProjectGenerator extends BaseSoapUIProjectGenerator {
	
	/**
	 * Request / Response file prefix.
	 */
	private static final String STR_FILE_PREFIX = "ose-billing-simul-1-billingsimulationservices";
	
	/**
	 * Template name.
	 */
	private static final String STR_TEMPLATE_NAME = "ControlSIMULSoapUIProjectTemplate.ftl";
	
	/**
	 * Constructor.
	 * @param projectName
	 * @param envName
	 * @param endpoint
	 * @param user
	 * @param password
	 * @throws IOException
	 */
	public ControlSIMULSoapUIProjectGenerator(String projectName, String envName, String endpoint, String user, String password) throws IOException {
		super(projectName, envName, endpoint, user, password, STR_TEMPLATE_NAME, STR_FILE_PREFIX);
	}
	
	private static String cobolToEmptyBoolean(String yesNo) {
		if ("O".equals(yesNo)) {
			return "true";
		}
		else if ("N".equals(yesNo)) {
			return "false";
		}
		else {
			return "";
		}
	}
	
	/**
	 * Builds Control SIMUL v1 Soap request. 
	 * @return
	 */
	private String buildRequestPayload(Document sourceRequest) throws Exception
	{
		Node bodyNode = sourceRequest.getFirstChild().getChildNodes().item(1);
		Node requestNode = bodyNode.getFirstChild().getLastChild();

		// control flags
		Node listeCtrlNode = requestNode.getChildNodes().item(1); 
		NodeList listeCtrlNodeList = listeCtrlNode.getChildNodes();

//		for (int i = 0; i < listeCtrlNodeList.getLength(); ++i) {
//		System.out.println(listeCtrlNodeList.item(i));
//		
//		NodeList nl = listeCtrlNodeList.item(i).getChildNodes();
//		for (int j = 0; j < nl.getLength(); ++j) {
//			System.out.println(nl.item(j));
//		}
//	}
		
		String ctrlAdresseFlag = listeCtrlNodeList.item(0).getTextContent();
		String ctrlAppCieFlag = listeCtrlNodeList.item(1).getTextContent();
		String ctrlCgFlag = listeCtrlNodeList.item(2).getTextContent();
		String ctrlClausesFlag = listeCtrlNodeList.item(3).getTextContent();
		String ctrlClientFlag = listeCtrlNodeList.item(4).getTextContent();
		String ctrlCntSigneFlag = listeCtrlNodeList.item(5).getTextContent();
		String ctrlCoassFlag = listeCtrlNodeList.item(6).getTextContent();
		String ctrlCocomFlag = listeCtrlNodeList.item(7).getTextContent();
		String ctrlCodtaxFlag = listeCtrlNodeList.item(8).getTextContent();
		String ctrlCoherencePrFlag = listeCtrlNodeList.item(9).getTextContent();
		String ctrlCotisFlag = listeCtrlNodeList.item(10).getTextContent();
		String ctrlCresultatFlag = listeCtrlNodeList.item(11).getTextContent();
		String ctrlDateEffetFlag = listeCtrlNodeList.item(12).getTextContent();
		String ctrlDerogationFlag = listeCtrlNodeList.item(13).getTextContent();
		String ctrlEchanFlag = listeCtrlNodeList.item(14).getTextContent();
		String ctrlFeffDurcntFlag = listeCtrlNodeList.item(15).getTextContent();
//		String ctrlForcFlag = listeCtrlNodeList.item(16).getTextContent();
//		String ctrlForcptFlag = listeCtrlNodeList.item(17).getTextContent();
		String ctrlFormuleFlag = listeCtrlNodeList.item(18).getTextContent();
		String ctrlFractFlag = listeCtrlNodeList.item(19).getTextContent();
		String ctrlGestFlag = listeCtrlNodeList.item(20).getTextContent();
		String ctrlIndiceFlag = listeCtrlNodeList.item(21).getTextContent();
		String ctrlMarcheFlag = listeCtrlNodeList.item(22).getTextContent();
//		String ctrlOptcptFlag = listeCtrlNodeList.item(23).getTextContent();
		String ctrlPjFlag = listeCtrlNodeList.item(24).getTextContent();
		String ctrlPortefeuilleFlag = listeCtrlNodeList.item(25).getTextContent();
		String ctrlPreNumcntFlag = listeCtrlNodeList.item(26).getTextContent();
		String ctrlPreresFlag = listeCtrlNodeList.item(27).getTextContent();
		String ctrlRevPeFlag = listeCtrlNodeList.item(28).getTextContent();
		String ctrlRevRcFlag = listeCtrlNodeList.item(29).getTextContent();
		String ctrlSiretFlag = listeCtrlNodeList.item(30).getTextContent();
		String ctrlTimeFlag = listeCtrlNodeList.item(31).getTextContent();
		String ctrlTitreFlag = listeCtrlNodeList.item(32).getTextContent();
		String ctrlUvFlag = listeCtrlNodeList.item(33).getTextContent();
		
		
		// data
		Element listeDonneesNode = (Element)requestNode.getChildNodes().item(2);
		NodeList listeDonneesList = listeDonneesNode.getChildNodes();

		for (int i = 0; i < listeDonneesList.getLength(); ++i) {
			System.out.println(listeDonneesList.item(i));

			NodeList nl = listeDonneesList.item(i).getChildNodes();
			for (int j = 0; j < nl.getLength(); ++j) {
				System.out.println(nl.item(j));
			}
		}
		
		
		// generate content
		Map<String, Object> content = new HashMap<>();
		content.put("CtrlCoherencePr", cobolToEmptyBoolean(ctrlCoherencePrFlag));
		content.put("CtrlClient", cobolToEmptyBoolean(ctrlClientFlag));
		content.put("CtrlPortefeuille", cobolToEmptyBoolean(ctrlPortefeuilleFlag));
		content.put("CtrlDateEffet", cobolToEmptyBoolean(ctrlDateEffetFlag));
		content.put("CtrlCoass", cobolToEmptyBoolean(ctrlCoassFlag));
		content.put("CtrlCresultat", cobolToEmptyBoolean(ctrlCresultatFlag));
		content.put("CtrlPreNumcnt", cobolToEmptyBoolean(ctrlPreNumcntFlag));
		content.put("CtrlCntSigne", cobolToEmptyBoolean(ctrlCntSigneFlag));
		content.put("CtrlUv", cobolToEmptyBoolean(ctrlUvFlag));
		content.put("CtrlFormule", cobolToEmptyBoolean(ctrlFormuleFlag));
		content.put("CtrlMarche", cobolToEmptyBoolean(ctrlMarcheFlag));
		content.put("CtrlEchan", cobolToEmptyBoolean(ctrlEchanFlag));
		content.put("CtrlFract", cobolToEmptyBoolean(ctrlFractFlag));
		content.put("CtrlPreres", cobolToEmptyBoolean(ctrlPreresFlag));
		content.put("CtrlCodtax", cobolToEmptyBoolean(ctrlCodtaxFlag));
		content.put("CtrlFeffDurcnt", cobolToEmptyBoolean(ctrlFeffDurcntFlag));
		content.put("CtrlCotis", cobolToEmptyBoolean(ctrlCotisFlag));
		content.put("CtrlDerogation", cobolToEmptyBoolean(ctrlDerogationFlag));
		content.put("CtrlCocom", cobolToEmptyBoolean(ctrlCocomFlag));
		content.put("CtrlRevRc", cobolToEmptyBoolean(ctrlRevRcFlag));
		content.put("CtrlRevPe", cobolToEmptyBoolean(ctrlRevPeFlag));
		content.put("CtrlClauses", cobolToEmptyBoolean(ctrlClausesFlag));
		content.put("CtrlCg", cobolToEmptyBoolean(ctrlCgFlag));
		content.put("CtrlIndice", cobolToEmptyBoolean(ctrlIndiceFlag));
		content.put("CtrlPj", cobolToEmptyBoolean(ctrlPjFlag));
		content.put("CtrlTime", cobolToEmptyBoolean(ctrlTimeFlag));
		content.put("CtrlAppcie", cobolToEmptyBoolean(ctrlAppCieFlag));
		content.put("CtrlAdresse", cobolToEmptyBoolean(ctrlAdresseFlag));
		content.put("CtrlGest", cobolToEmptyBoolean(ctrlGestFlag));
		content.put("CtrlSiret", cobolToEmptyBoolean(ctrlSiretFlag));
		content.put("CtrlTitre", cobolToEmptyBoolean(ctrlTitreFlag));
		content.put("Grpcnt", "0076083244");
		
		// generate traget request
		Writer controlSIMULWriter = new StringWriter();
		Template controlSIMULRequestTemplate = this.config.getTemplate("ControlSIMULRequestTemplate.ftl");
		controlSIMULRequestTemplate.process(content, controlSIMULWriter);
		controlSIMULWriter.flush();
		controlSIMULWriter.close();
		
		String toReturn = controlSIMULWriter.toString();
		
		return toReturn;
	}
	
	/**
	 * Generates files based upon BillingSIMULSoapUIProjectTemplate.
	 */
	@SuppressWarnings("unchecked")
	public void run() {
		try {
			// list all request files
			File sourceDir = new File("sources/OseCobolGeneratedControler");
			File[] requestFiles = sourceDir.listFiles(new FilenameFilter() {
				@Override
				public boolean accept(File directory, String fileName) {
					return fileName.startsWith("control") && fileName.contains("request") && fileName.endsWith(".xml");
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
		//for (int requestIndex = 0; requestIndex < 1; ++requestIndex) {
			
			// identify response file name
			String requestfileName = requestFile.getName();
			
			// file name parts : 
			// 		requestfileNameParts[0] : prefix
			// 		requestfileNameParts[1] : request
			// 		requestfileNameParts[2] : request id
			String[] requestfileNameParts = requestfileName.split("_");
			
			
			
			try {
				// Generate requests empty structure
				String returnCodeCount = "0";
				String[] labels = new String[20];
				for (int labelIndex = 0; labelIndex < labels.length; ++labelIndex) {
					labels[labelIndex] = "";
				}
				
				// get xml doc from request file
				Document requestDocument = Common.readXmlDocument(requestFile);
				
				// get response elements from response file 
//				String responsefileName = "control_response_" + requestfileNameParts[2];
//				File responseFile = new File("sources/" + this.projectName, responsefileName);


				// MOCK
				labels[0] = "MATRICULE DU GESTIONNAIRE INCORRECT";
				
				// generate requests
				Map<String, Object> request = new HashMap<>();
				request.put("RequestName", "Request_" + requestfileNameParts[2]);
				request.put("RequestPayload", this.buildRequestPayload(requestDocument));
				request.put("RequestNbCR", returnCodeCount);
				for (int labelIndex = 1; labelIndex <= labels.length; ++labelIndex) {
					request.put("RequestLabel" + labelIndex, labels[labelIndex-1]);
				}
				requests.add(request);
			} catch (Exception e) {
				System.out.println("Aouch...");
				e.printStackTrace();
			}
		}
		
		return root;
	}
}