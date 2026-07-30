package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes.dex */
public final class zzggm {
    private static final zzgmx zza = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzggj
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            return zzgkr.zzb((zzggi) zzgdxVar);
        }
    }, zzggi.class, zzgdn.class);
    private static final zzglz zzb = new zzglz() { // from class: com.google.android.gms.internal.ads.zzggk
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            zzggq zzggqVar = (zzggq) zzgekVar;
            zzggg zzgggVar = new zzggg(null);
            zzgggVar.zzc(zzggqVar);
            zzgggVar.zza(num);
            zzgggVar.zzb(zzgvp.zzc(zzggqVar.zzb()));
            return zzgggVar.zzd();
        }
    };
    private static final zzgmb zzc = new zzgmb() { // from class: com.google.android.gms.internal.ads.zzggl
    };
    private static final zzgdy zzd = zzgli.zzd("type.googleapis.com/google.crypto.tink.AesGcmSivKey", zzgdn.class, zzgsj.SYMMETRIC, zzgro.zzg());

    public static void zza(boolean z) {
        if (!zzgks.zza(1)) {
            throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
        }
        int i = zzgjn.zza;
        zzgjn.zze(zzgmk.zzc());
        if (zzb()) {
            zzgmh.zza().zze(zza);
            zzgmg zzb2 = zzgmg.zzb();
            HashMap hashMap = new HashMap();
            zzggn zzggnVar = new zzggn(null);
            zzggnVar.zza(16);
            zzggo zzggoVar = zzggo.zza;
            zzggnVar.zzb(zzggoVar);
            hashMap.put("AES128_GCM_SIV", zzggnVar.zzc());
            zzggn zzggnVar2 = new zzggn(null);
            zzggnVar2.zza(16);
            zzggo zzggoVar2 = zzggo.zzc;
            zzggnVar2.zzb(zzggoVar2);
            hashMap.put("AES128_GCM_SIV_RAW", zzggnVar2.zzc());
            zzggn zzggnVar3 = new zzggn(null);
            zzggnVar3.zza(32);
            zzggnVar3.zzb(zzggoVar);
            hashMap.put("AES256_GCM_SIV", zzggnVar3.zzc());
            zzggn zzggnVar4 = new zzggn(null);
            zzggnVar4.zza(32);
            zzggnVar4.zzb(zzggoVar2);
            hashMap.put("AES256_GCM_SIV_RAW", zzggnVar4.zzc());
            zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
            zzgmc.zza().zzb(zzc, zzggq.class);
            zzgma.zzb().zzc(zzb, zzggq.class);
            zzgkz.zzc().zzd(zzd, true);
        }
    }

    private static boolean zzb() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }
}
