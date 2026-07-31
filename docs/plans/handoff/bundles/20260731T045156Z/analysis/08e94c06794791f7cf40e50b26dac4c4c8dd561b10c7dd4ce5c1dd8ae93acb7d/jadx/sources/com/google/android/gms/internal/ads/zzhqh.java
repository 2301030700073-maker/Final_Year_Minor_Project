package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhqh {
    public static final /* synthetic */ int zza = 0;
    private static final zzhsz zzb;
    private static final zzhsz zzc;
    private static final zzhfi zzd;
    private static final zzhff zze;
    private static final zzhec zzf;
    private static final zzhdz zzg;
    private static final zzhec zzh;
    private static final zzhdz zzi;
    private static final zzhdp zzj;

    static {
        zzhsz zza2 = zzhgi.zza("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey");
        zzb = zza2;
        zzhsz zza3 = zzhgi.zza("type.googleapis.com/google.crypto.tink.Ed25519PublicKey");
        zzc = zza3;
        zzd = zzhfi.zzd(zzhqg.zza, zzhnl.class, zzhfx.class);
        zze = zzhff.zzd(zzhqb.zza, zza2, zzhfx.class);
        zzf = zzhec.zzd(zzhqc.zza, zzhns.class, zzhfw.class);
        zzg = zzhdz.zzd(zzhqd.zza, zza3, zzhfw.class);
        zzh = zzhec.zzd(zzhqe.zza, zzhnm.class, zzhfw.class);
        zzi = zzhdz.zzd(zzhqf.zza, zza2, zzhfw.class);
        zzhdo zza4 = zzhdp.zza();
        zza4.zza(zzhlt.RAW, zzhnk.zzd);
        zza4.zza(zzhlt.TINK, zzhnk.zza);
        zza4.zza(zzhlt.CRUNCHY, zzhnk.zzb);
        zza4.zza(zzhlt.LEGACY, zzhnk.zzc);
        zzj = zza4.zzb();
    }

    public static void zza(zzhfb zzhfbVar) throws GeneralSecurityException {
        zzhfbVar.zzd(zzd);
        zzhfbVar.zze(zze);
        zzhfbVar.zzb(zzf);
        zzhfbVar.zzc(zzg);
        zzhfbVar.zzb(zzh);
        zzhfbVar.zzc(zzi);
    }

    static /* synthetic */ zzhfx zzb(zzhnl zzhnlVar) {
        zzhkz zze2 = zzhla.zze();
        zze2.zza("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey");
        zze2.zzb(zzhki.zzc().zzaM());
        zze2.zzc((zzhlt) zzj.zzb(zzhnlVar.zzc()));
        return zzhfx.zza((zzhla) zze2.zzbu());
    }

    static /* synthetic */ zzhnl zzc(zzhfx zzhfxVar) {
        if (!zzhfxVar.zzc().zza().equals("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey")) {
            String zza2 = zzhfxVar.zzc().zza();
            String.valueOf(zza2);
            throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parseParameters: ".concat(String.valueOf(zza2)));
        }
        try {
            if (zzhki.zzb(zzhfxVar.zzc().zzb(), zzhvy.zza()).zza() == 0) {
                return zzhnl.zzb((zzhnk) zzj.zzc(zzhfxVar.zzc().zzc()));
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzhxd e) {
            throw new GeneralSecurityException("Parsing Ed25519Parameters failed: ", e);
        }
    }

    static /* synthetic */ zzhns zze(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.Ed25519PublicKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parsePublicKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhkm zzc2 = zzhkm.zzc(zzhfwVar.zzb(), zzhvy.zza());
            if (zzc2.zza() == 0) {
                return zzhns.zzc((zzhnk) zzj.zzc(zzhfwVar.zzd()), zzhsz.zza(zzc2.zzb().zzv()), zzhfwVar.zze());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing Ed25519PublicKey failed");
        }
    }

    static /* synthetic */ zzhfw zzf(zzhnm zzhnmVar, zzgwn zzgwnVar) {
        zzhkj zze2 = zzhkk.zze();
        zze2.zzb(zzh(zzhnmVar.zze()));
        byte[] zzc2 = zzhnmVar.zzf().zzc(zzgwnVar);
        zze2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return zzhfw.zza("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey", ((zzhkk) zze2.zzbu()).zzaM(), zzhkw.ASYMMETRIC_PRIVATE, (zzhlt) zzj.zzb(zzhnmVar.zzd().zzc()), zzhnmVar.zze().zzb());
    }

    static /* synthetic */ zzhnm zzg(zzhfw zzhfwVar, zzgwn zzgwnVar) {
        if (!zzhfwVar.zzg().equals("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey")) {
            String zzg2 = zzhfwVar.zzg();
            String.valueOf(zzg2);
            throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(zzg2)));
        }
        try {
            zzhkk zzd2 = zzhkk.zzd(zzhfwVar.zzb(), zzhvy.zza());
            if (zzd2.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzhkm zzc2 = zzd2.zzc();
            if (zzc2.zza() == 0) {
                return zzhnm.zzc(zzhns.zzc((zzhnk) zzj.zzc(zzhfwVar.zzd()), zzhsz.zza(zzc2.zzb().zzv()), zzhfwVar.zze()), zzhtb.zza(zzd2.zzb().zzv(), zzgwnVar));
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzhxd unused) {
            throw new GeneralSecurityException("Parsing Ed25519PrivateKey failed");
        }
    }

    private static zzhkm zzh(zzhns zzhnsVar) {
        zzhkl zzd2 = zzhkm.zzd();
        byte[] zzc2 = zzhnsVar.zzd().zzc();
        zzd2.zza(zzhvi.zzr(zzc2, 0, zzc2.length));
        return (zzhkm) zzd2.zzbu();
    }
}
