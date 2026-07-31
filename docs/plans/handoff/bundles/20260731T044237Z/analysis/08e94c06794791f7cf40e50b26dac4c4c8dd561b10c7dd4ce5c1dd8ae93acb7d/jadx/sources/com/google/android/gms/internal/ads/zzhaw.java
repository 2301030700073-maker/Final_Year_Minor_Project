package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhaw {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhfi zzc;
    private static final zzhff zzd;
    private static final zzhec zze;
    private static final zzhdz zzf;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzb = zza2;
        zzc = zzhfi.zzd(zzhav.zza, zzgxp.class, zzhfx.class);
        zzd = zzhff.zzd(zzhas.zza, zza2, zzhfx.class);
        zze = zzhec.zzd(zzhat.zza, zzgxh.class, zzhfw.class);
        zzf = zzhdz.zzd(zzhau.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzc);
        zzhfbVar.zze(zzd);
        zzhfbVar.zzb(zze);
        zzhfbVar.zzc(zzf);
    }

    static /* synthetic */ zzhfx zzb(zzgxp zzgxpVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzhiy zzd2 = zzhiz.zzd();
        zzhjc zzc2 = zzhjd.zzc();
        zzhje zzb2 = zzhjf.zzb();
        zzb2.zza(zzgxpVar.zzf());
        zzc2.zza((zzhjf) zzb2.zzbu());
        zzc2.zzb(zzgxpVar.zzc());
        zzd2.zza((zzhjd) zzc2.zzbu());
        zzhkr zze3 = zzhks.zze();
        zze3.zza(zzi(zzgxpVar));
        zze3.zzb(zzgxpVar.zzd());
        zzd2.zzb((zzhks) zze3.zzbu());
        zze2.zzb(((zzhiz) zzd2.zzbu()).zzaM());
        zze2.zzc(zzf(zzgxpVar.zzg()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzgxp zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhiz zzc2 = zzhiz.zzc(zzhfxVar.zzc().zzb(), zzhvy.zza());
            if (zzc2.zzb().zzc() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgxm zzb2 = zzgxp.zzb();
            zzb2.zza(zzc2.zza().zzb());
            zzb2.zzb(zzc2.zzb().zzb());
            zzb2.zzc(zzc2.zza().zza().zza());
            zzb2.zzd(zzc2.zzb().zza().zzb());
            zzb2.zzf(zzh(zzc2.zzb().zza().zza()));
            zzb2.zze(zzg(zzhfxVar.zzc().zzc()));
            return zzb2.zzg();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzgxh zzgxhVar, zzgwn zzgwnVar) {
        zzhiw zze2 = zzhix.zze();
        zzhja zzd2 = zzhjb.zzd();
        zzhje zzb2 = zzhjf.zzb();
        zzb2.zza(zzgxhVar.zzg().zzf());
        zzd2.zza((zzhjf) zzb2.zzbu());
        byte[] zzc2 = zzgxhVar.zze().zzc(zzgwnVar);
        zzd2.zzb(zzhvi.zzr(zzc2, 0, zzc2.length));
        zze2.zza((zzhjb) zzd2.zzbu());
        zzhkp zze3 = zzhkq.zze();
        zze3.zza(zzi(zzgxhVar.zzg()));
        byte[] zzc3 = zzgxhVar.zzf().zzc(zzgwnVar);
        zze3.zzb(zzhvi.zzr(zzc3, 0, zzc3.length));
        zze2.zzb((zzhkq) zze3.zzbu());
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzhix) zze2.zzbu()).zzaM(), zzhkw.SYMMETRIC, zzf(zzgxhVar.zzg().zzg()), zzgxhVar.zzb());
    }

    static /* synthetic */ zzgxh zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
        }
        try {
            zzhix zzd2 = zzhix.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzd2.zzb().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (zzd2.zzc().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            zzgxm zzb2 = zzgxp.zzb();
            zzb2.zza(zzd2.zzb().zzc().zzc());
            zzb2.zzb(zzd2.zzc().zzc().zzc());
            zzb2.zzc(zzd2.zzb().zzb().zza());
            zzb2.zzd(zzd2.zzc().zzb().zzb());
            zzb2.zzf(zzh(zzd2.zzc().zzb().zza()));
            zzb2.zze(zzg(zzhfwVar.zzd()));
            zzgxp zzg = zzb2.zzg();
            zzgxg zzd3 = zzgxh.zzd();
            zzd3.zza(zzg);
            zzd3.zzb(zzhtb.zza(zzd2.zzb().zzc().zzv(), zzgwnVar));
            zzd3.zzc(zzhtb.zza(zzd2.zzc().zzc().zzv(), zzgwnVar));
            zzd3.zzd(zzhfwVar.zze());
            return zzd3.zze();
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
        }
    }

    private static zzhlt zzf(zzgxo zzgxoVar) throws GeneralSecurityException {
        if (zzgxo.zza.equals(zzgxoVar)) {
            return zzhlt.TINK;
        }
        if (zzgxo.zzb.equals(zzgxoVar)) {
            return zzhlt.CRUNCHY;
        }
        if (zzgxo.zzc.equals(zzgxoVar)) {
            return zzhlt.RAW;
        }
        String valueOf = String.valueOf(zzgxoVar);
        String.valueOf(valueOf);
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(valueOf)));
    }

    private static zzgxo zzg(zzhlt zzhltVar) throws GeneralSecurityException {
        int ordinal = zzhltVar.ordinal();
        if (ordinal == 1) {
            return zzgxo.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgxo.zzc;
            }
            if (ordinal != 4) {
                int zza2 = zzhltVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 34);
                sb.append("Unable to parse OutputPrefixType: ");
                sb.append(zza2);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzgxo.zzb;
    }

    private static zzgxn zzh(zzhko zzhkoVar) throws GeneralSecurityException {
        int ordinal = zzhkoVar.ordinal();
        if (ordinal == 1) {
            return zzgxn.zza;
        }
        if (ordinal == 2) {
            return zzgxn.zzd;
        }
        if (ordinal == 3) {
            return zzgxn.zzc;
        }
        if (ordinal == 4) {
            return zzgxn.zze;
        }
        if (ordinal == 5) {
            return zzgxn.zzb;
        }
        int zza2 = zzhkoVar.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 26);
        sb.append("Unable to parse HashType: ");
        sb.append(zza2);
        throw new GeneralSecurityException(sb.toString());
    }

    private static zzhku zzi(zzgxp zzgxpVar) throws GeneralSecurityException {
        zzhko zzhkoVar;
        zzhkt zzc2 = zzhku.zzc();
        zzc2.zzb(zzgxpVar.zze());
        zzgxn zzh = zzgxpVar.zzh();
        if (zzgxn.zza.equals(zzh)) {
            zzhkoVar = zzhko.SHA1;
        } else if (zzgxn.zzb.equals(zzh)) {
            zzhkoVar = zzhko.SHA224;
        } else if (zzgxn.zzc.equals(zzh)) {
            zzhkoVar = zzhko.SHA256;
        } else if (zzgxn.zzd.equals(zzh)) {
            zzhkoVar = zzhko.SHA384;
        } else {
            if (!zzgxn.zze.equals(zzh)) {
                String valueOf = String.valueOf(zzh);
                String.valueOf(valueOf);
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(valueOf)));
            }
            zzhkoVar = zzhko.SHA512;
        }
        zzc2.zza(zzhkoVar);
        return (zzhku) zzc2.zzbu();
    }
}
