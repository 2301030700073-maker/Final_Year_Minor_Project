package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhsv implements zzgwm {
    static final zzhdp zza;
    private static final byte[] zzb;
    private static final byte[] zzc;

    static {
        zzhdo zza2 = zzhdp.zza();
        zza2.zza(zzhsi.SHA256, zzhpd.zza);
        zza2.zza(zzhsi.SHA384, zzhpd.zzb);
        zza2.zza(zzhsi.SHA512, zzhpd.zzc);
        zza = zza2.zzb();
        zzb = new byte[0];
        zzc = new byte[]{0};
    }

    public static zzgwm zzb(zzhpj zzhpjVar) throws GeneralSecurityException {
        try {
            return zzhrd.zze(zzhpjVar);
        } catch (NoSuchProviderException unused) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) ((KeyFactory) zzhrz.zzf.zzb("RSA")).generatePublic(new RSAPublicKeySpec(zzhpjVar.zzd(), zzhpjVar.zzf().zzd()));
            zzhpf zzf = zzhpjVar.zzf();
            zzhdp zzhdpVar = zza;
            return new zzhsu(rSAPublicKey, (zzhsi) zzhdpVar.zzb(zzf.zzf()), (zzhsi) zzhdpVar.zzb(zzf.zzg()), zzf.zzh(), zzhpjVar.zze().zzc(), zzhpjVar.zzf().zze().equals(zzhpe.zzc) ? zzc : zzb, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        throw null;
    }
}
