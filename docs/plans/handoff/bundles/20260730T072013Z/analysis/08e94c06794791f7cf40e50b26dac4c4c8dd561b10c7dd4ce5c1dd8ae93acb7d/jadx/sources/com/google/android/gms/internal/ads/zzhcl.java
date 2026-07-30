package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhcl {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhck.zza, zzhak.class, zzhfx.class);
        zzd = zzhff.zzd(zzhch.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhci.zza, zzhaf.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhcj.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzhak zzhakVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        zzhmo zzd2 = zzhmp.zzd();
        zzhmq zzb2 = zzhmr.zzb();
        zzb2.zza(zzhakVar.zzd());
        zzd2.zza((zzhmr) zzb2.zzbu());
        zze2.zzb(((zzhmp) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzhakVar.zzc()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhak zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhmp zzc2 = zzhmp.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzhak.zzb(zzg(zzhfxVar.zzc().zzc()), zzc2.zzb().zza());
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzhaf zzhafVar, zzgwn zzgwnVar) {
        zzhmm zze2 = zzhmn.zze();
        byte[] zzc2 = zzhafVar.zze().zzc(zzgwnVar);
        zze2.zzb(zzhvi.zzr(zzc2, 0, zzc2.length));
        zzhmq zzb2 = zzhmr.zzb();
        zzb2.zza(zzhafVar.zzf().zzd());
        zze2.zza((zzhmr) zzb2.zzbu());
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((zzhmn) zze2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzhafVar.zzf().zzc()), zzhafVar.zzb());
    }

    static /* synthetic */ zzhaf zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
        }
        try {
            zzhmn zzd2 = zzhmn.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzd2.zzc().zzc() == 32) {
                return zzhaf.zzd(zzhak.zzb(zzg(zzhfwVar.zzd()), zzd2.zzb().zza()), zzhtb.zza(zzd2.zzc().zzv(), zzgwnVar), zzhfwVar.zze());
            }
            throw new GeneralSecurityException("Only 32 byte key size is accepted");
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing XAesGcmKey failed");
        }
    }

    private static zzhlt zzf(zzhaj zzhajVar) throws GeneralSecurityException {
        if (Objects.equals(zzhajVar, zzhaj.zza)) {
            return zzhlt.TINK;
        }
        if (Objects.equals(zzhajVar, zzhaj.zzb)) {
            return zzhlt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhajVar.toString()));
    }

    private static zzhaj zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzhaj.zza;
        }
        if (ordinal == 3) {
            return zzhaj.zzb;
        }
        int zza2 = zzhltVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
        sb.append("Unable to parse OutputPrefixType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }
}
