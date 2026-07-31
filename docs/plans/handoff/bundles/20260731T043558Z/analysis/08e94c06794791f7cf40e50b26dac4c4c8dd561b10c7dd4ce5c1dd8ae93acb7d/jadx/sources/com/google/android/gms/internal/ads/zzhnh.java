package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzhnh implements zzheq {
    static final /* synthetic */ zzhnh zza = new zzhnh();

    private /* synthetic */ zzhnh() {
    }

    @Override // com.google.android.gms.internal.ads.zzheq
    public final /* synthetic */ zzgvt zza(zzgwj zzgwjVar, Integer num) {
        zzhnb zzhnbVar = (zzhnb) zzgwjVar;
        int i = zzhnj.zza;
        ECParameterSpec zza2 = zzhnbVar.zzd().zza();
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhrz.zze.zzb("EC");
        keyPairGenerator.initialize(zza2);
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        ECPublicKey eCPublicKey = (ECPublicKey) generateKeyPair.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) generateKeyPair.getPrivate();
        zzhne zzhneVar = new zzhne(null);
        zzhneVar.zza(zzhnbVar);
        zzhneVar.zzc(num);
        zzhneVar.zzb(eCPublicKey.getW());
        zzhnf zzd = zzhneVar.zzd();
        zzhnc zzhncVar = new zzhnc(null);
        zzhncVar.zza(zzd);
        zzhncVar.zzb(zzhta.zza(eCPrivateKey.getS(), zzgvr.zza()));
        return zzhncVar.zzc();
    }
}
