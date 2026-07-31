package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAKeyGenParameterSpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzhpl implements zzheq {
    static final /* synthetic */ zzhpl zza = new zzhpl();

    private /* synthetic */ zzhpl() {
    }

    @Override // com.google.android.gms.internal.ads.zzheq
    public final /* synthetic */ zzgvt zza(zzgwj zzgwjVar, Integer num) {
        zzhpf zzhpfVar = (zzhpf) zzgwjVar;
        int i = zzhpn.zza;
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhrz.zze.zzb("RSA");
        keyPairGenerator.initialize(new RSAKeyGenParameterSpec(zzhpfVar.zzc(), new BigInteger(1, zzhpfVar.zzd().toByteArray())));
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) generateKeyPair.getPrivate();
        zzhpi zzhpiVar = new zzhpi(null);
        zzhpiVar.zza(zzhpfVar);
        zzhpiVar.zzb(rSAPublicKey.getModulus());
        zzhpiVar.zzc(num);
        zzhpj zzd = zzhpiVar.zzd();
        zzhpg zzhpgVar = new zzhpg(null);
        zzhpgVar.zza(zzd);
        zzhpgVar.zzb(zzhta.zza(rSAPrivateCrtKey.getPrimeP(), zzgvr.zza()), zzhta.zza(rSAPrivateCrtKey.getPrimeQ(), zzgvr.zza()));
        zzhpgVar.zzc(zzhta.zza(rSAPrivateCrtKey.getPrivateExponent(), zzgvr.zza()));
        zzhpgVar.zzd(zzhta.zza(rSAPrivateCrtKey.getPrimeExponentP(), zzgvr.zza()), zzhta.zza(rSAPrivateCrtKey.getPrimeExponentQ(), zzgvr.zza()));
        zzhpgVar.zze(zzhta.zza(rSAPrivateCrtKey.getCrtCoefficient(), zzgvr.zza()));
        return zzhpgVar.zzf();
    }
}
