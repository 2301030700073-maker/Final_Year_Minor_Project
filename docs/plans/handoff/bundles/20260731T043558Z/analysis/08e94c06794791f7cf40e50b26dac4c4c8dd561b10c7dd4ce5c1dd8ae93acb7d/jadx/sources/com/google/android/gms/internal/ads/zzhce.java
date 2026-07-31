package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhce implements zzgvm {
    private final zzgvm zza;
    private final byte[] zzb;

    private zzhce(zzgvm zzgvmVar, byte[] bArr) {
        this.zza = zzgvmVar;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.zzb = bArr;
    }

    public static zzgvm zzb(zzhei zzheiVar) throws GeneralSecurityException {
        byte[] zzc;
        zzhfw zzc2 = zzheiVar.zzc(zzgvr.zza());
        zzgvm zzgvmVar = (zzgvm) zzhdw.zza().zzc(zzc2.zzg(), zzgvm.class).zza(zzc2.zzb());
        zzhlt zzd = zzc2.zzd();
        int ordinal = zzd.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzc = zzhfc.zza.zzc();
                } else if (ordinal != 4) {
                    String valueOf = String.valueOf(zzd);
                    String.valueOf(valueOf);
                    throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(valueOf)));
                }
            }
            zzc = zzhfc.zza(zzheiVar.zzb().intValue()).zzc();
        } else {
            zzc = zzhfc.zzb(zzheiVar.zzb().intValue()).zzc();
        }
        return new zzhce(zzgvmVar, zzc);
    }

    public static zzgvm zzc(zzgvm zzgvmVar, zzhsz zzhszVar) {
        return new zzhce(zzgvmVar, zzhszVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzhgi.zze(bArr3, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
