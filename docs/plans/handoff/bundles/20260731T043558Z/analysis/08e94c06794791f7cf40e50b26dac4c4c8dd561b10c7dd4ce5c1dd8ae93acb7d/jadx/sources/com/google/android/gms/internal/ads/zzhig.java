package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhig {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhdp zzc;
    private static final zzhdp zzd;
    private static final zzhfi zze;
    private static final zzhff zzf;
    private static final zzhec zzg;
    private static final zzhdz zzh;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.HmacKey");
        zzb = zza2;
        zzhdo zza3 = zzhdp.zza();
        zza3.zza(zzhlt.RAW, zzhhe.zzd);
        zza3.zza(zzhlt.TINK, zzhhe.zza);
        zza3.zza(zzhlt.LEGACY, zzhhe.zzc);
        zza3.zza(zzhlt.CRUNCHY, zzhhe.zzb);
        zzc = zza3.zzb();
        zzhdo zza4 = zzhdp.zza();
        zza4.zza(zzhko.SHA1, zzhhd.zza);
        zza4.zza(zzhko.SHA224, zzhhd.zzb);
        zza4.zza(zzhko.SHA256, zzhhd.zzc);
        zza4.zza(zzhko.SHA384, zzhhd.zzd);
        zza4.zza(zzhko.SHA512, zzhhd.zze);
        zzd = zza4.zzb();
        zze = zzhfi.zzd(zzhif.zza, zzhhf.class, zzhfx.class);
        zzf = zzhff.zzd(zzhic.zza, zza2, zzhfx.class);
        zzg = zzhec.zzd(zzhid.zza, zzhgw.class, zzhfw.class);
        zzh = zzhdz.zzd(zzhie.zza, zza2, zzhfw.class);
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zze);
        zzhfbVar.zze(zzf);
        zzhfbVar.zzb(zzg);
        zzhfbVar.zzc(zzh);
    }

    static /* synthetic */ zzhfx zzb(zzhhf zzhhfVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.HmacKey");
        zzhkr zze3 = zzhks.zze();
        zze3.zza(zzf(zzhhfVar));
        zze3.zzb(zzhhfVar.zzc());
        zze2.zzb(((zzhks) zze3.zzbu()).zzaM());
        zze2.zzc((zzhlt) zzc.zzb(zzhhfVar.zzf()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhhf zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            zzhks zzd2 = zzhks.zzd(zzhfxVar.zzc().zzb(), zzhvy.zza());
            if (zzd2.zzc() != 0) {
                int zzc2 = zzd2.zzc();
                StringBuilder sb = new StringBuilder(String.valueOf(zzc2).length() + 47);
                sb.append("Parsing HmacParameters failed: unknown Version ");
                sb.append(zzc2);
                throw new GeneralSecurityException(sb.toString());
            }
            zzhhc zzb2 = zzhhf.zzb();
            zzb2.zza(zzd2.zzb());
            zzb2.zzb(zzd2.zza().zzb());
            zzb2.zzd((zzhhd) zzd.zzc(zzd2.zza().zza()));
            zzb2.zzc((zzhhe) zzc.zzc(zzhfxVar.zzc().zzc()));
            return zzb2.zze();
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing HmacParameters failed: ", e);
        }
    }

    static /* synthetic */ zzhfw zzd(zzhgw zzhgwVar, zzgwn zzgwnVar) {
        zzhkp zze2 = zzhkq.zze();
        zze2.zza(zzf(zzhgwVar.zzf()));
        byte[] zzc2 = zzhgwVar.zzd().zzc(zzgwnVar);
        zze2.zzb(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.HmacKey", ((zzhkq) zze2.zzbu()).zzaM(), zzhkw.SYMMETRIC, (zzhlt) zzc.zzb(zzhgwVar.zzf().zzf()), zzhgwVar.zzb());
    }

    static /* synthetic */ zzhgw zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
        }
        try {
            zzhkq zzd2 = zzhkq.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhhc zzb2 = zzhhf.zzb();
            zzb2.zza(zzd2.zzc().zzc());
            zzb2.zzb(zzd2.zzb().zzb());
            zzb2.zzd((zzhhd) zzd.zzc(zzd2.zzb().zza()));
            zzb2.zzc((zzhhe) zzc.zzc(zzhfwVar.zzd()));
            zzhhf zze2 = zzb2.zze();
            zzhgv zzc2 = zzhgw.zzc();
            zzc2.zza(zze2);
            zzc2.zzb(zzhtb.zza(zzd2.zzc().zzv(), zzgwnVar));
            zzc2.zzc(zzhfwVar.zze());
            return zzc2.zzd();
        } catch (zzhxd | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing HmacKey failed");
        }
    }

    private static zzhku zzf(zzhhf zzhhfVar) throws GeneralSecurityException {
        zzhkt zzc2 = zzhku.zzc();
        zzc2.zzb(zzhhfVar.zzd());
        zzc2.zza((zzhko) zzd.zzb(zzhhfVar.zzg()));
        return (zzhku) zzc2.zzbu();
    }
}
