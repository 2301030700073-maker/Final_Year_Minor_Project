package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzghd {
    public static final /* synthetic */ int zza = 0;
    private static final zzgdy zzb = zzgli.zzd("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", zzgdn.class, zzgsj.SYMMETRIC, zzgtl.zzg());
    private static final zzglz zzc = new zzglz() { // from class: com.google.android.gms.internal.ads.zzghb
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            return zzghm.zza((zzghr) zzgekVar, num);
        }
    };
    private static final zzgmx zzd = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzghc
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            zzghm zzghmVar = (zzghm) zzgdxVar;
            int i = zzghd.zza;
            String zzd2 = zzghmVar.zzb().zzd();
            zzgeu zzb2 = zzghmVar.zzb().zzb();
            zzgdn zzb3 = zzgei.zza(zzd2).zzb();
            int i2 = zzgha.zza;
            try {
                return zzgkc.zzc(new zzgha(zzgsp.zzf(zzgeq.zzb(zzb2), zzgxb.zza()), zzb3), zzghmVar.zzc());
            } catch (zzgyg e) {
                throw new GeneralSecurityException(e);
            }
        }
    }, zzghm.class, zzgdn.class);

    public static void zza(boolean z) {
        if (!zzgks.zza(1)) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        int i = zzghw.zza;
        zzghw.zze(zzgmk.zzc());
        zzgma.zzb().zzc(zzc, zzghr.class);
        zzgmh.zza().zze(zzd);
        zzgkz.zzc().zzd(zzb, true);
    }
}
