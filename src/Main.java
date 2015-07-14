
public class Main {

	public static void main(String[] args) {
		try {
//			BillingSIMULSoapUIProjectGenerator billingSIMULgenerator = new BillingSIMULSoapUIProjectGenerator(
//					"BillingSIMULv1",
//					"RE7EIP",
//					"http://eip-mediator-wsint-tstenv-sedc.applications.services.axa-tech.intraxa/ws/ose-billing-simul-1-billingsimulationservices",
//					"CLT_OSE", 
//					"CLT_OSE1"    
//					);
//			billingSIMULgenerator.run();
			
//			ContractCSTSoapUIProjectGenerator contractCSTgenerator = new ContractCSTSoapUIProjectGenerator(
//					"ContractCSTv1",
//					"RE7EIP",
//					"http://eip-mediator-wsint-tstenv-sedc.applications.services.axa-tech.intraxa/ws/ose-contract-cst-1-contractservices",
//					"CLT_OSE", 
//					"CLT_OSE1"    
//					);
//			contractCSTgenerator.run();
			
			ControlSIMULSoapUIProjectGenerator controlSIMULGenerator = new ControlSIMULSoapUIProjectGenerator(
					"ControlSIMULv1",
					"RE7EIP",
					"http://eip-mediator-wsint-tstenv-sedc.applications.services.axa-tech.intraxa/ws/ose-control-simul-1-controlsimulationservices",
					"CLT_OSE", 
					"CLT_OSE1"    
					);
			controlSIMULGenerator.run();
		}
		catch(Exception e) {
			e.printStackTrace();
		}

	}
}