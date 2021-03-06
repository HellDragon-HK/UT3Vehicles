//-----------------------------------------------------------
// UT3GoliathTurret.uc
// I don't think the sounds will initially work...
// GreatEmerald, 2008, 2014
// Copyright (c) 2012, 100GPing100 (visuals + fixed sounds)
//-----------------------------------------------------------
class UT3GoliathTurret extends ONSTankSecondaryTurret;

DefaultProperties
{
	//===============
	// @100GPing100
	Mesh = SkeletalMesh'UT3GoliathAnims.GoliathMachineGun';
	RedSkin = Shader'UT3GoliathTex.Goliath.GoliathSkin';
	BlueSkin = Shader'UT3GoliathTex.Goliath.GoliathSkinBlue';

	YawBone = "Object10";
	PitchBone = "Object03";
	WeaponFireAttachmentBone = "Object02";

	FireSoundClass = Sound'UT3A_Vehicle_Goliath.Sounds.A_Vehicle_Goliath_TurretFire03';
	// @100GPing100
	//======END======


	Spread=0.03
	DamageMin=18
	DamageMax=18
}
