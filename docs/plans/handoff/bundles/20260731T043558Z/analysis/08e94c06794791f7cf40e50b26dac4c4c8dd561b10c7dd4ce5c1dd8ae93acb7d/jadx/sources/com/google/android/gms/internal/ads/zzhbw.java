package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhbw {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhbv.zza, zzgyv.class, zzhfx.class);
        zzd = zzhff.zzd(zzhbs.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhbt.zza, zzgyq.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhbu.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgyv zzgyvVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zze2.zzb(zzhjx.zzb().zzaM());
        zze2.zzc(zzf(zzgyvVar.zzc()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgyv zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhjx.zza(zzhfxVar.zzc().zzb(), zzhvy.zza());
            return zzgyv.zzb(zzg(zzhfxVar.zzc().zzc()));
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgyq zzgyqVar, zzgwn zzgwnVar) {
        zzhju zzd2 = zzhjv.zzd();
        byte[] zzc2 = zzgyqVar.zze().zzc(zzgwnVar);
        zzd2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((zzhjv) zzd2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzgyqVar.zzf().zzc()), zzgyqVar.zzb());
    }

    static /* synthetic */ zzgyq zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzhjv zzc2 = zzhjv.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzgyq.zzd(zzg(zzhfwVar.zzd()), zzhtb.zza(zzc2.zzb().zzv(), zzgwnVar), zzhfwVar.zze());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
        }
    }

    private static zzhlt zzf(zzgyu zzgyuVar) throws GeneralSecurityException {
        if (zzgyu.zza.equals(zzgyuVar)) {
            return zzhlt.TINK;
        }
        if (zzgyu.zzb.equals(zzgyuVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzgyu.zzc.equals(zzgyuVar)) {
            return zzhlt.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgyuVar.toString()));
    }

    private static zzgyu zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgyu.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgyu.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzgyu.zzb;
    }
}
