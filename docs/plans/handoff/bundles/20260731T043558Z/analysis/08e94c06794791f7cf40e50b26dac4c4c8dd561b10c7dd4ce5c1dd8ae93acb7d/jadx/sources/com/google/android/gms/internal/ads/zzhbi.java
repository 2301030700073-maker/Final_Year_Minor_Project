package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhbi {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhbh.zza, zzgyg.class, zzhfx.class);
        zzd = zzhff.zzd(zzhbe.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhbf.zza, zzgxz.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhbg.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgyg zzgygVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzhjo zzd2 = zzhjp.zzd();
        zzd2.zza(zzgygVar.zzc());
        zze2.zzb(((zzhjp) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzgygVar.zzd()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgyg zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhjp zzc2 = zzhjp.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            if (zzc2.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzgye zzb2 = zzgyg.zzb();
            zzb2.zza(zzc2.zza());
            zzb2.zzb(12);
            zzb2.zzc(16);
            zzb2.zzd(zzg(zzhfxVar.zzc().zzc()));
            return zzb2.zze();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgxz zzgxzVar, zzgwn zzgwnVar) {
        zzhjm zzd2 = zzhjn.zzd();
        byte[] zzc2 = zzgxzVar.zze().zzc(zzgwnVar);
        zzd2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzhjn) zzd2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzgxzVar.zzf().zzd()), zzgxzVar.zzb());
    }

    static /* synthetic */ zzgxz zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
        }
        try {
            zzhjn zzc2 = zzhjn.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgye zzb2 = zzgyg.zzb();
            zzb2.zza(zzc2.zzb().zzc());
            zzb2.zzb(12);
            zzb2.zzc(16);
            zzb2.zzd(zzg(zzhfwVar.zzd()));
            zzgyg zze2 = zzb2.zze();
            zzgxy zzd2 = zzgxz.zzd();
            zzd2.zza(zze2);
            zzd2.zzb(zzhtb.zza(zzc2.zzb().zzv(), zzgwnVar));
            zzd2.zzc(zzhfwVar.zze());
            return zzd2.zzd();
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing AesGcmKey failed");
        }
    }

    private static zzhlt zzf(zzgyf zzgyfVar) throws GeneralSecurityException {
        if (zzgyf.zza.equals(zzgyfVar)) {
            return zzhlt.TINK;
        }
        if (zzgyf.zzb.equals(zzgyfVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzgyf.zzc.equals(zzgyfVar)) {
            return zzhlt.RAW;
        }
        String valueOf = String.valueOf(zzgyfVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzgyf zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgyf.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgyf.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzgyf.zzb;
    }
}
