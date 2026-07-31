package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgzk {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzgzj.zza, zzgzf.class, zzhfx.class);
        zzd = zzhff.zzd(zzgzg.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzgzh.zza, zzgzd.class, zzhfw.class);
        zzf = zzhdz.zzd(zzgzi.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgzf zzgzfVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        zzhln zzc2 = zzhlo.zzc();
        zzc2.zza(zzgzfVar.zzc());
        zze2.zzb(((zzhlo) zzc2.zzbu()).zzaM());
        zze2.zzc(zzf(zzgzfVar.zzd()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgzf zzc(zzhfx zzhfxVar) {
        if (zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            try {
                return zzgzf.zzb(zzhlo.zzb(zzhfxVar.zzc().zzb(), zzhvy.zza()).zza(), zzg(zzhfxVar.zzc().zzc()));
            } catch (zzhxd e) {
                throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e);
            }
        }
        String zza2 = zzhfxVar.zzc().zza();
        String.valueOf(zza2);
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
    }

    static /* synthetic */ zzhfw zzd(zzgzd zzgzdVar, zzgwn zzgwnVar) {
        zzhll zzd2 = zzhlm.zzd();
        zzhln zzc2 = zzhlo.zzc();
        zzc2.zza(zzgzdVar.zze().zzc());
        zzd2.zza((zzhlo) zzc2.zzbu());
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((zzhlm) zzd2.zzbu()).zzaM(), zzhkw.REMOTE, zzf(zzgzdVar.zze().zzd()), zzgzdVar.zzb());
    }

    static /* synthetic */ zzgzd zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
        }
        try {
            zzhlm zzc2 = zzhlm.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzgzd.zzd(zzgzf.zzb(zzc2.zzb().zza(), zzg(zzhfwVar.zzd())), zzhfwVar.zze());
            }
            String valueOf = String.valueOf(zzc2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
            sb.append("KmsAeadKey are only accepted with version 0, got ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
        }
    }

    private static zzhlt zzf(zzgze zzgzeVar) throws GeneralSecurityException {
        if (zzgze.zza.equals(zzgzeVar)) {
            return zzhlt.TINK;
        }
        if (zzgze.zzb.equals(zzgzeVar)) {
            return zzhlt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgzeVar.toString()));
    }

    private static zzgze zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgze.zza;
        }
        if (ordinal == 3) {
            return zzgze.zzb;
        }
        int zza2 = zzhltVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
        sb.append("Unable to parse OutputPrefixType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }
}
