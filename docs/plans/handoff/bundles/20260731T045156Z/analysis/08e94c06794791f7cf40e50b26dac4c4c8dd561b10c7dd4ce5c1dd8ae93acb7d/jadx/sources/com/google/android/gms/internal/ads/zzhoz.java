package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAKeyGenParameterSpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzhoz implements zzheq {
    static final /* synthetic */ zzhoz zza = new zzhoz();

    private /* synthetic */ zzhoz() {
    }

    @Override // com.google.android.gms.internal.ads.zzheq
    public final /* synthetic */ zzgvt zza(zzgwj zzgwjVar, Integer num) {
        zzhot zzhotVar = (zzhot) zzgwjVar;
        int i = zzhpb.zza;
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhrz.zze.zzb("RSA");
        keyPairGenerator.initialize(new RSAKeyGenParameterSpec(zzhotVar.zzc(), new BigInteger(1, zzhotVar.zzd().toByteArray())));
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) generateKeyPair.getPrivate();
        zzhow zzhowVar = new zzhow(null);
        zzhowVar.zza(zzhotVar);
        zzhowVar.zzb(rSAPublicKey.getModulus());
        zzhowVar.zzc(num);
        zzhox zzd = zzhowVar.zzd();
        zzhou zzhouVar = new zzhou(null);
        zzhouVar.zza(zzd);
        zzhouVar.zzb(zzhta.zza(rSAPrivateCrtKey.getPrimeP(), zzgvr.zza()), zzhta.zza(rSAPrivateCrtKey.getPrimeQ(), zzgvr.zza()));
        zzhouVar.zzc(zzhta.zza(rSAPrivateCrtKey.getPrivateExponent(), zzgvr.zza()));
        zzhouVar.zzd(zzhta.zza(rSAPrivateCrtKey.getPrimeExponentP(), zzgvr.zza()), zzhta.zza(rSAPrivateCrtKey.getPrimeExponentQ(), zzgvr.zza()));
        zzhouVar.zze(zzhta.zza(rSAPrivateCrtKey.getCrtCoefficient(), zzgvr.zza()));
        return zzhouVar.zzf();
    }
}
