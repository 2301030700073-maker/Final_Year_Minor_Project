package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhhx {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhhw.zza, zzhgr.class, zzhfx.class);
        zzd = zzhff.zzd(zzhht.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhhu.zza, zzhgk.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhhv.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzhgr zzhgrVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzhis zzd2 = zzhit.zzd();
        zzd2.zzb(zzh(zzhgrVar));
        zzd2.zza(zzhgrVar.zzc());
        zze2.zzb(((zzhit) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzhgrVar.zzf()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhgr zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhit zzc2 = zzhit.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            zzhgp zzb2 = zzhgr.zzb();
            zzb2.zza(zzc2.zza());
            zzb2.zzb(zzc2.zzb().zza());
            zzb2.zzc(zzg(zzhfxVar.zzc().zzc()));
            return zzb2.zzd();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzhgk zzhgkVar, zzgwn zzgwnVar) {
        zzhiq zze2 = zzhir.zze();
        zze2.zzb(zzh(zzhgkVar.zzf()));
        byte[] zzc2 = zzhgkVar.zzd().zzc(zzgwnVar);
        zze2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzhir) zze2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzhgkVar.zzf().zzf()), zzhgkVar.zzb());
    }

    static /* synthetic */ zzhgk zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
        }
        try {
            zzhir zzd2 = zzhir.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhgp zzb2 = zzhgr.zzb();
            zzb2.zza(zzd2.zzb().zzc());
            zzb2.zzb(zzd2.zzc().zza());
            zzb2.zzc(zzg(zzhfwVar.zzd()));
            zzhgr zzd3 = zzb2.zzd();
            zzhgj zzc2 = zzhgk.zzc();
            zzc2.zza(zzd3);
            zzc2.zzb(zzhtb.zza(zzd2.zzb().zzv(), zzgwnVar));
            zzc2.zzc(zzhfwVar.zze());
            return zzc2.zzd();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }

    private static zzhlt zzf(zzhgq zzhgqVar) throws GeneralSecurityException {
        if (zzhgq.zza.equals(zzhgqVar)) {
            return zzhlt.TINK;
        }
        if (zzhgq.zzb.equals(zzhgqVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzhgq.zzd.equals(zzhgqVar)) {
            return zzhlt.RAW;
        }
        if (zzhgq.zzc.equals(zzhgqVar)) {
            return zzhlt.LEGACY;
        }
        String valueOf = String.valueOf(zzhgqVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzhgq zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzhgq.zza;
        }
        if (ordinal == 2) {
            return zzhgq.zzc;
        }
        if (ordinal == 3) {
            return zzhgq.zzd;
        }
        if (ordinal == 4) {
            return zzhgq.zzb;
        }
        int zza2 = zzhltVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
        sb.append("Unable to parse OutputPrefixType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzhiv zzh(zzhgr zzhgrVar) {
        zzhiu zzb2 = zzhiv.zzb();
        zzb2.zza(zzhgrVar.zzd());
        return (zzhiv) zzb2.zzbu();
    }
}
