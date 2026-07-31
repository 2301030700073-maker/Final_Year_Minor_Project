package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfhd {
    public zzfhd() {
        try {
            zzgwr.zza();
        } catch (GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to Configure Aead. ".concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "CryptoUtils.registerAead");
        }
    }

    public static final String zza() {
        byte[] bArr;
        try {
            zzgwe zzf = zzgwe.zzf(zzgvw.zzb(zzhex.zza().zzc("AES128_GCM")));
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzgvp.zzb(zzf, zzgvo.zzb(byteArrayOutputStream));
                bArr = byteArrayOutputStream.toByteArray();
            } catch (IOException unused) {
                throw new GeneralSecurityException("Serialize keyset failed");
            }
        } catch (GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to generate key".concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "CryptoUtils.generateKey");
            bArr = new byte[0];
        }
        return Base64.encodeToString(bArr, 11);
    }

    @Nullable
    public static final String zzb(byte[] bArr, byte[] bArr2, @Nullable String str, zzdvc zzdvcVar) {
        zzgwe zzc;
        if (str != null && (zzc = zzc(str)) != null) {
            try {
                byte[] zza = ((zzgvm) zzc.zzg(zzhda.zza(), zzgvm.class)).zza(bArr, bArr2);
                zzdvcVar.zzc().put("ds", "1");
                return new String(zza, "UTF-8");
            } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e) {
                com.google.android.gms.ads.internal.util.zze.zza("Failed to decrypt ".concat(e.toString()));
                com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "CryptoUtils.decrypt");
                zzdvcVar.zzc().put("dsf", e.toString());
            }
        }
        return null;
    }

    @Nullable
    private static final zzgwe zzc(String str) {
        try {
            try {
                return zzgvp.zza(zzgvn.zza(Base64.decode(str, 11)));
            } catch (IOException unused) {
                throw new GeneralSecurityException("Parse keyset failed");
            }
        } catch (GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to get keysethandle".concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "CryptoUtils.getHandle");
            return null;
        }
    }
}
