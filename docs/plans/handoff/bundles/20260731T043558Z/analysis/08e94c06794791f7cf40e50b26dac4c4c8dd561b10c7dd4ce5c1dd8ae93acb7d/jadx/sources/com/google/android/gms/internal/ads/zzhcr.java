package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhcr {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhcq.zza, zzhar.class, zzhfx.class);
        zzd = zzhff.zzd(zzhcn.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhco.zza, zzhal.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhcp.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzhar zzharVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zze2.zzb(zzhmv.zzc().zzaM());
        zze2.zzc(zzf(zzharVar.zzc()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhar zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            if (zzhmv.zzb(zzhfxVar.zzc().zzb(), zzhvy.zza()).zza() == 0) {
                return zzhar.zzb(zzg(zzhfxVar.zzc().zzc()));
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzhal zzhalVar, zzgwn zzgwnVar) {
        zzhms zzd2 = zzhmt.zzd();
        byte[] zzc2 = zzhalVar.zze().zzc(zzgwnVar);
        zzd2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((zzhmt) zzd2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzhalVar.zzf().zzc()), zzhalVar.zzb());
    }

    static /* synthetic */ zzhal zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzhmt zzc2 = zzhmt.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzhal.zzd(zzg(zzhfwVar.zzd()), zzhtb.zza(zzc2.zzb().zzv(), zzgwnVar), zzhfwVar.zze());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
        }
    }

    private static zzhlt zzf(zzhaq zzhaqVar) throws GeneralSecurityException {
        if (zzhaq.zza.equals(zzhaqVar)) {
            return zzhlt.TINK;
        }
        if (zzhaq.zzb.equals(zzhaqVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzhaq.zzc.equals(zzhaqVar)) {
            return zzhlt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhaqVar.toString()));
    }

    private static zzhaq zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzhaq.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzhaq.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzhaq.zzb;
    }
}
