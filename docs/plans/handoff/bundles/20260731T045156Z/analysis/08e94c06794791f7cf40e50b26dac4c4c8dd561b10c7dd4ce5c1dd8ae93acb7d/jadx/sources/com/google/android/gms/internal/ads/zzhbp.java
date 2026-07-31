package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhbp {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhbo.zza, zzgyp.class, zzhfx.class);
        zzd = zzhff.zzd(zzhbl.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhbm.zza, zzgyi.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhbn.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgyp zzgypVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzhjs zzd2 = zzhjt.zzd();
        zzd2.zza(zzgypVar.zzc());
        zze2.zzb(((zzhjt) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzgypVar.zzd()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgyp zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhjt zzc2 = zzhjt.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            if (zzc2.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzgyn zzb2 = zzgyp.zzb();
            zzb2.zza(zzc2.zza());
            zzb2.zzb(zzg(zzhfxVar.zzc().zzc()));
            return zzb2.zzc();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgyi zzgyiVar, zzgwn zzgwnVar) {
        zzhjq zzd2 = zzhjr.zzd();
        byte[] zzc2 = zzgyiVar.zze().zzc(zzgwnVar);
        zzd2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((zzhjr) zzd2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzgyiVar.zzf().zzd()), zzgyiVar.zzb());
    }

    static /* synthetic */ zzgyi zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
        }
        try {
            zzhjr zzc2 = zzhjr.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgyn zzb2 = zzgyp.zzb();
            zzb2.zza(zzc2.zzb().zzc());
            zzb2.zzb(zzg(zzhfwVar.zzd()));
            zzgyp zzc3 = zzb2.zzc();
            zzgyh zzd2 = zzgyi.zzd();
            zzd2.zza(zzc3);
            zzd2.zzb(zzhtb.zza(zzc2.zzb().zzv(), zzgwnVar));
            zzd2.zzc(zzhfwVar.zze());
            return zzd2.zzd();
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
        }
    }

    private static zzhlt zzf(zzgyo zzgyoVar) throws GeneralSecurityException {
        if (zzgyo.zza.equals(zzgyoVar)) {
            return zzhlt.TINK;
        }
        if (zzgyo.zzb.equals(zzgyoVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzgyo.zzc.equals(zzgyoVar)) {
            return zzhlt.RAW;
        }
        String valueOf = String.valueOf(zzgyoVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzgyo zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgyo.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgyo.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzgyo.zzb;
    }
}
