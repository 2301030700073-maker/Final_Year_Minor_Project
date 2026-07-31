package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhqt implements zzgwl {
    private static final byte[] zzb = new byte[0];
    private static final byte[] zzc = {0};
    private static final byte[] zzd = {1, 2, 3};

    @Nullable
    Provider zza;
    private final RSAPrivateCrtKey zze;
    private final String zzf;
    private final byte[] zzg;
    private final byte[] zzh;
    private final zzgwm zzi;

    private zzhqt(RSAPrivateCrtKey rSAPrivateCrtKey, zzhor zzhorVar, byte[] bArr, byte[] bArr2, zzgwm zzgwmVar, @Nullable Provider provider) throws GeneralSecurityException {
        if (!zzhcy.zza(2)) {
            throw new GeneralSecurityException("Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
        }
        if (zzhorVar != zzhor.zza && zzhorVar != zzhor.zzb && zzhorVar != zzhor.zzc) {
            String valueOf = String.valueOf(zzhorVar);
            String.valueOf(valueOf);
            throw new GeneralSecurityException("Unsupported hash: ".concat(String.valueOf(valueOf)));
        }
        zzhsx.zzc(rSAPrivateCrtKey.getModulus().bitLength());
        zzhsx.zzd(rSAPrivateCrtKey.getPublicExponent());
        this.zze = rSAPrivateCrtKey;
        this.zzf = zzhqu.zzc(zzhorVar);
        this.zzg = bArr;
        this.zzh = bArr2;
        this.zzi = zzgwmVar;
        this.zza = provider;
    }

    public static zzgwl zzb(zzhov zzhovVar) throws GeneralSecurityException {
        Provider zzb2 = zzhqu.zzb();
        zzhqt zzhqtVar = new zzhqt((RSAPrivateCrtKey) (zzb2 != null ? KeyFactory.getInstance("RSA", zzb2) : (KeyFactory) zzhrz.zzf.zzb("RSA")).generatePrivate(new RSAPrivateCrtKeySpec(zzhovVar.zze().zzd(), zzhovVar.zzd().zzd(), zzhovVar.zzh().zzb(zzgvr.zza()), zzhovVar.zzf().zzb(zzgvr.zza()), zzhovVar.zzg().zzb(zzgvr.zza()), zzhovVar.zzi().zzb(zzgvr.zza()), zzhovVar.zzj().zzb(zzgvr.zza()), zzhovVar.zzk().zzb(zzgvr.zza()))), zzhovVar.zzd().zzf(), zzhovVar.zze().zze().zzc(), zzhovVar.zzd().zze().equals(zzhos.zzc) ? zzc : zzb, zzb2 != null ? zzhqu.zze(zzhovVar.zze(), zzb2) : zzhsr.zzb(zzhovVar.zze()), zzb2);
        zzhqtVar.zza(zzd);
        return zzhqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgwl
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        Signature signature;
        Provider provider = this.zza;
        if (provider != null) {
            signature = Signature.getInstance(this.zzf, provider);
        } else {
            signature = (Signature) zzhrz.zzc.zzb(this.zzf);
        }
        signature.initSign(this.zze);
        signature.update(bArr);
        byte[] bArr2 = this.zzh;
        if (bArr2.length > 0) {
            signature.update(bArr2);
        }
        byte[] sign = signature.sign();
        byte[] bArr3 = this.zzg;
        if (bArr3.length > 0) {
            sign = zzhrm.zza(bArr3, sign);
        }
        try {
            this.zzi.zza(sign, bArr);
            return sign;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("RSA signature computation error", e);
        }
    }
}
