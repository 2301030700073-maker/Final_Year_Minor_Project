package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzgkc implements zzgdn {
    private final zzgdn zza;
    private final byte[] zzb;

    private zzgkc(zzgdn zzgdnVar, byte[] bArr) {
        this.zza = zzgdnVar;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.zzb = bArr;
    }

    public static zzgdn zzb(zzglk zzglkVar) {
        byte[] zzc;
        zzgnh zza = zzglkVar.zza(zzgdw.zza());
        zzgsi zza2 = zzgsl.zza();
        zza2.zzb(zza.zzg());
        zza2.zzc(zza.zze());
        zza2.zza(zza.zzb());
        zzgdn zzgdnVar = (zzgdn) zzgen.zzb((zzgsl) zza2.zzbr(), zzgdn.class);
        zzgtp zzc2 = zza.zzc();
        int ordinal = zzc2.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzc = zzgml.zza.zzc();
                } else if (ordinal != 4) {
                    throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(zzc2)));
                }
            }
            zzc = zzgml.zza(zzglkVar.zzb().intValue()).zzc();
        } else {
            zzc = zzgml.zzb(zzglkVar.zzb().intValue()).zzc();
        }
        return new zzgkc(zzgdnVar, zzc);
    }

    public static zzgdn zzc(zzgdn zzgdnVar, zzgvo zzgvoVar) {
        return new zzgkc(zzgdnVar, zzgvoVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzgnu.zzc(bArr3, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
