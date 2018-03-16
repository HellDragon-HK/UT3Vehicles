/******************************************************************************
UT3LeviathanBolt

Creation date: 2007-12-30 18:58
Last change: $Id$
Copyright (c) 2007, Wormbo
Copyright (c) 2017 HellDragon
******************************************************************************/

class UT3LeviathanBolt extends ONSMASRocketProjectile;


var float AccelRate;
var() sound ExplosionSound;

simulated function PostNetBeginPlay()
{
	Acceleration = AccelRate * Normal(Velocity);
}


function Timer();

simulated function Explode(vector HitLocation, vector HitNormal)
{
    local xEmitter sparks;

    if ( EffectIsRelevant(Location,false) )
    {
        sparks = Spawn(class'LinkProjSparksYellow',,, HitLocation, rotator(HitNormal));
        sparks.Skins[0] = texture'Shock_Sparkle';
    }
    PlaySound(ExplosionSound, Slot_None, 1.0);
    Destroy();
}

//=============================================================================
// Default values
//=============================================================================

defaultproperties
{
        Speed=1200
        MaxSpeed=3500
        AccelRate=20000.0
        Damage=100
        DamageRadius=300
        MomentumTransfer=4000
        LifeSpan=4.0
        MyDamageType=class'UT3DmgType_LeviathanBolt'
        DrawType   = DT_StaticMesh
        StaticMesh = StaticMesh'WeaponStaticMesh.FlakChunk'
	ExplosionSound=Sound'UT3A_Weapon_Stinger.UT3StingerFireImpact.UT3StingerFireImpactCue'
}
