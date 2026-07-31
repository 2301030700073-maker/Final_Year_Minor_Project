package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhbb {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhba.zza, zzgxx.class, zzhfx.class);
        zzd = zzhff.zzd(zzhax.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhay.zza, zzgxr.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhaz.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgxx zzgxxVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzhji zzd2 = zzhjj.zzd();
        zzd2.zza(zzh(zzgxxVar));
        zzd2.zzb(zzgxxVar.zzc());
        zze2.zzb(((zzhjj) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzgxxVar.zze()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgxx zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhjj zzc2 = zzhjj.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            zzgxv zzb2 = zzgxx.zzb();
            zzb2.zza(zzc2.zzb());
            zzb2.zzb(zzc2.zza().zza());
            zzb2.zzc(16);
            zzb2.zzd(zzg(zzhfxVar.zzc().zzc()));
            return zzb2.zze();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgxr zzgxrVar, zzgwn zzgwnVar) {
        zzhjg zze2 = zzhjh.zze();
        zze2.zza(zzh(zzgxrVar.zzf()));
        byte[] zzc2 = zzgxrVar.zze().zzc(zzgwnVar);
        zze2.zzb(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzhjh) zze2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzgxrVar.zzf().zze()), zzgxrVar.zzb());
    }

    static /* synthetic */ zzgxr zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
        }
        try {
            zzhjh zzd2 = zzhjh.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgxv zzb2 = zzgxx.zzb();
            zzb2.zza(zzd2.zzc().zzc());
            zzb2.zzb(zzd2.zzb().zza());
            zzb2.zzc(16);
            zzb2.zzd(zzg(zzhfwVar.zzd()));
            zzgxx zze2 = zzb2.zze();
            zzgxq zzd3 = zzgxr.zzd();
            zzd3.zza(zze2);
            zzd3.zzb(zzhtb.zza(zzd2.zzc().zzv(), zzgwnVar));
            zzd3.zzc(zzhfwVar.zze());
            return zzd3.zzd();
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing AesEaxcKey failed");
        }
    }

    private static zzhlt zzf(zzgxw zzgxwVar) throws GeneralSecurityException {
        if (zzgxw.zza.equals(zzgxwVar)) {
            return zzhlt.TINK;
        }
        if (zzgxw.zzb.equals(zzgxwVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzgxw.zzc.equals(zzgxwVar)) {
            return zzhlt.RAW;
        }
        String valueOf = String.valueOf(zzgxwVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzgxw zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgxw.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgxw.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzgxw.zzb;
    }

    private static zzhjl zzh(zzgxx zzgxxVar) throws GeneralSecurityException {
        zzhjk zzb2 = zzhjl.zzb();
        zzb2.zza(zzgxxVar.zzd());
        return (zzhjl) zzb2.zzbu();
    }
}
