void Main()
{
	while(true)
	{
		auto app = GetApp();
		auto editor = cast<CGameCtnEditorFree>(app.Editor);
		if(editor !is null){
			auto camera = cast<CGameControlCameraEditorOrbital>(editor.OrbitalCameraControl);
			if(camera !is null){
				camera.m_MinVAngle = -500.0;
				camera.m_MaxVAngle = 500.0;
				camera.m_MaxDistance = 150000.0;
				camera.m_ParamPanSpeed_OnZoomMin = 400.0;
			}
		}
		yield();
	}
}