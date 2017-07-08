import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

	@IBOutlet var sceneView: ARSCNView!

	override func viewDidLoad() {
		super.viewDidLoad()
		sceneView.delegate = self
		sceneView.showsStatistics = true
		let scene = SCNScene(named: "art.scnassets/ship.scn")!
		sceneView.scene = scene
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		let configuration = ARWorldTrackingSessionConfiguration()
		sceneView.session.run(configuration)
	}

	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		sceneView.session.pause()
	}
}

