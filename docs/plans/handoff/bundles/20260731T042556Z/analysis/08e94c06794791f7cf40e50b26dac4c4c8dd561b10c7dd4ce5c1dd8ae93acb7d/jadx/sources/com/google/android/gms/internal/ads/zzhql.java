package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhql implements zzgwm {
    private final zzgwm zza;
    private final byte[] zzb;
    private final byte[] zzc;

    private zzhql(zzgwm zzgwmVar, byte[] bArr, byte[] bArr2) {
        this.zza = zzgwmVar;
        this.zzb = bArr;
        this.zzc = bArr2;
    }

    public static zzgwm zzb(zzhei zzheiVar) throws GeneralSecurityException {
        zzhfw zzc = zzheiVar.zzc(zzgvr.zza());
        return new zzhql((zzgwm) zzhdw.zza().zzc(zzc.zzg(), zzgwm.class).zza(zzc.zzb()), zzc(zzc), zzd(zzc));
    }

    static byte[] zzc(zzhfw zzhfwVar) throws GeneralSecurityException {
        int ordinal = zzhfwVar.zzd().ordinal();
        if (ordinal == 1) {
            return zzhfc.zzb(zzhfwVar.zze().intValue()).zzc();
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzhfc.zza.zzc();
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
        }
        return zzhfc.zza(zzhfwVar.zze().intValue()).zzc();
    }

    static byte[] zzd(zzhfw zzhfwVar) {
        return zzhfwVar.zzd().equals(zzhlt.LEGACY) ? new byte[]{0} : new byte[0];
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        int length = bArr3.length;
        if (length == 0 && this.zzc.length == 0) {
            this.zza.zza(bArr, bArr2);
            return;
        }
        if (!zzhgi.zze(bArr3, bArr)) {
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
        byte[] bArr4 = this.zzc;
        if (bArr4.length != 0) {
            bArr2 = zzhrm.zza(bArr2, bArr4);
        }
        this.zza.zza(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
    }
}
